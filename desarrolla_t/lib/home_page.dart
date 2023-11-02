import 'dart:convert';

import 'package:desarrolla_t/jsons/constants.dart';
import 'package:desarrolla_t/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:desarrolla_t/widget_page.dart';
import 'package:desarrolla_t/newEvent_page.dart';
import 'package:provider/provider.dart';

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

  @override
  Widget build(BuildContext context) {
    const title = 'Desarrolla-T';

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
                      SizedBox(
                        height: 150,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: eventos.length,
                          itemBuilder: (context, index) {
                            return  Center(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  InfoTarjeta(name:eventos[index]["event_name"],
                                  hour:eventos[index]["event_hour"],
                                  date:eventos[index]["event_date"],
                                  place:eventos[index]["event_place"],
                                  color:eventos[index]["event_color"],
                                  notes:eventos[index]["event_notes"],
                                  category:eventos[index]["event_category"]),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
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