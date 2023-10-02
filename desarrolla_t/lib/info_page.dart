import 'package:flutter/material.dart';

void main() => runApp(const InfoPage());

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Detalles'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
