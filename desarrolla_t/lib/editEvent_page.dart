import 'package:flutter/material.dart';
import 'package:desarrolla_t/widget_page.dart';

//PARA EDITAR UN EVENTO

class ModifyEvent extends StatelessWidget {
  const ModifyEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Evento'),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(300, 0, 0, 0),
        child: Container(
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Evento Modificado'),
                  content: const Text('Se modifico el evento'),
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
              child: Text('Modificar'),
            ),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NameModifier(),
            DateModifier(),
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
