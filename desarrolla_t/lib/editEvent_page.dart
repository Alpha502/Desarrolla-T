// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:desarrolla_t/widget_page.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo Evento'),
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
