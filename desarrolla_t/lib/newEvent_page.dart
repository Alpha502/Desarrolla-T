import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:desarrolla_t/widget_page.dart';

//PARA CREAR UN NUEVO EVENTO

class NewEvent extends StatelessWidget {
  const NewEvent({super.key});

  @override
  Widget build(BuildContext context) {
    
    var db = FirebaseFirestore.instance;
    String? uid = FirebaseAuth.instance.currentUser?.uid;

    String Nombre;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Evento'),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(300, 0, 0, 0),
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () {

              final evento = <String, String>{
                "event_name": "prueba",
                "event_hour": "",
                "event_date": "",
                "event_place": "",
                "event_color": "",
                "event_notes": "",
                "event_category": ""
              };

              db
                  .collection("eventos")
                  .doc(uid)
                  //.set(evento)
                  .collection("arreglo_eventos")
                  .add({
                    "event_name": "Clase de cocina",
                    "event_hour": 9,
                    "event_date": "12 Noviembre",
                    "event_place": "En el ITESO",
                    "event_color": "#6D72C3",
                    "event_notes": "Tengo que llevar mi propio bowl",
                    "event_category": "Peleas"
                  });
                  //.onError((e, _) => print("Error writing document: $e"));

              Navigator.pop(context);
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Evento Agregado'),
                  content:
                      const Text('Se agrego tu nuevo evento a tu calendario'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            },
            child: const Center(
              child: Text('Agregar'),
            ),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NameInput(),
            DatePicker(),
            Row(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 20, 25),
                  child: Text(
                    'Escoge una categoría: ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                CategoryInput(),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 20, 25),
              child: Text(
                'Escoge un color',
                style: TextStyle(fontSize: 20),
              ),
            ),
            BotonColor(),
          ],
        ),
      ),
    );
  }
}
