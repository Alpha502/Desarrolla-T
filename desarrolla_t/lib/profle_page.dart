import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:desarrolla_t/jsons/constants.dart';
import 'package:desarrolla_t/widget_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:desarrolla_t/editProfile_page.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  String? uid = FirebaseAuth.instance.currentUser?.uid;
  String? correo = FirebaseAuth.instance.currentUser?.email;
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('perfil').snapshots();
  late Map<String, dynamic> data;

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        }

        return Scaffold(
          drawer: const Drawer(child: Costado()),
          appBar: AppBar(
            title: const Text('Perfil'),
            actions: <Widget>[
              Builder(builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.add),
                  selectedIcon: const Icon(Icons.add),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ModifyProfile()),
                    );
                  },
                );
              }),
            ],
          ),
          body: ListView(
            children: snapshot.data!.docs
              .map((DocumentSnapshot document) {
                Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start, 
                  children: 
                  [
                    const Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(40),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 90,
                              backgroundImage: NetworkImage(
                                  'https://cdn.autobild.es/sites/navi.axelspringer.es/public/media/image/2016/09/569465-whatsapp-que-tus-contactos-ponen-rana-perfil.jpg?tf=3840x'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      data['username'],
                      style: const TextStyle(fontSize: 30),
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Nombre:',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                data['nombre'],
                                style: const TextStyle(fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Fecha de nacimiento',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                data['fecha_nacimiento'],
                                style: const TextStyle(fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Correo',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text(
                                correo!,
                                style: TextStyle(fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ]
                );
              })
              .toList()
              .cast(),
          )
        );
      },
    );
  }
}
