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
          children: [InfoPage(), BotonColor()],
        ),
      ),
    );
  }
}
