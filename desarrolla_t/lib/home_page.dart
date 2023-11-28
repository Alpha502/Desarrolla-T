import 'dart:convert';

import 'package:desarrolla_t/jsons/constants.dart';
import 'package:desarrolla_t/theme_model.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:desarrolla_t/widget_page.dart';
import 'package:desarrolla_t/newEvent_page.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


//PAGINA PRINCIPAL

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<HomePage> createState() => _HomePage();
  
}

class _HomePage extends State<HomePage>{

  List<dynamic> eventos = [];
  List<dynamic> pendientes = [];

  @override
  void initState(){
    eventos = jsonDecode(EVENTO);
    pendientes = jsonDecode(PENDIENTES);
    super.initState();
  }

  String? uid = FirebaseAuth.instance.currentUser?.uid;
  late Map<String, dynamic> data;
  

  @override
  Widget build(BuildContext context) {
    const title = 'Desarrolla-T';

    CollectionReference eventos = FirebaseFirestore.instance.collection('eventos');

    return Consumer(builder: (context, ThemeModel themeNotifier, child){
      return MaterialApp(
            title: title,
            home: Scaffold(
                drawer: const Drawer(child: Costado()),
                appBar: AppBar(
                  title: const Text(title),
                  actions: <Widget>[
                    Builder(builder: (BuildContext context) {
                      return IconButton(
                        icon: const Icon(Icons.add),
                        selectedIcon: const Icon(Icons.add),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewEvent()),
                          );
                        },
                      );
                    }),
                    IconButton(
                        icon: Icon(themeNotifier.isDark ? Icons.wb_sunny : Icons.nightlight_round),
                        selectedIcon: const Icon(Icons.add),
                        onPressed: () {
                          themeNotifier.isDark ? themeNotifier.isDark = false
                          : themeNotifier.isDark = true;
                        },
                      ),
                      const SignOutButton(),
                  ],
                  //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                ),
                body: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.network(
                          'https://static.vecteezy.com/system/resources/previews/005/892/011/original/back-to-school-banner-with-hand-drawn-line-art-icons-of-education-science-objects-and-office-supplies-school-supplies-concept-of-education-background-free-vector.jpg'),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 20, 25),
                        child: Text(
                          'Agenda Del dia',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      FutureBuilder<DocumentSnapshot>(
                        future: eventos.doc(uid).get(),
                        builder:
                            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

                          if (snapshot.hasError) {
                            return const Text("Ocurrio un error");
                          }

                          if (snapshot.hasData && !snapshot.data!.exists) {
                            return const Text("No existen eventos aun");
                          }

                          if (snapshot.connectionState == ConnectionState.done) {
                            data = snapshot.data!.data() as Map<String, dynamic>;
                          }
                          return SizedBox(
                              height: 150,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: data.length,
                                itemBuilder: (context, index) {
                                  return Center(
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        InfoTarjeta(name:data["event_name"],
                                        //hour:data["event_hour"],
                                        hour:data.length,
                                        date:data["event_date"],
                                        place:data["event_place"],
                                        color:data["event_color"],
                                        notes:data["event_notes"],
                                        category:data["event_category"]),
                                      ],
                                    ),
                                  );  
                                },
                              ),
                            );
                        },
                      ),/*
                      FirestoreListView(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        pageSize: 15,
                        query: FirebaseFirestore.instance.collection("test"),
                        itemBuilder: (
                          BuildContext context,
                          QueryDocumentSnapshot<Map<String, dynamic>> document,
                        ) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${document.data()["cuenta"]}"),
                              Text("${(document.data()["Cuando"] as Timestamp).toDate()}"),
                              const Divider()
                            ],
                          );
                        },
                      ),*/
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 20, 25),
                        child: Text(
                          'Pendientes',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: 500,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: pendientes.length,
                          itemBuilder: (context, index) {
                            return Center(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  InfoPendiente(name:pendientes[index]["pending_name"],
                                  hour:pendientes[index]["pending_hour"],
                                  date:pendientes[index]["pending_date"],
                                  color:pendientes[index]["pending_color"],)
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              )
          );
    });
  }
}