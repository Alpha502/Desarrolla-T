import 'package:flutter/material.dart';
import 'package:desarrolla_t/home_page.dart';
import 'package:desarrolla_t/cale_page.dart';
import 'package:desarrolla_t/info_page.dart';

void main() => runApp(MaterialApp(
      title: 'Rutas',
      home: HomePage(
        items: List<String>.generate(5, (i) => 'Item $i'),
      ),
      routes: {
        '/infopage': (context) => const MyApp(),
        '/calpage': (context) => const TableBasicsExample(),
        '/homepage': (context) =>
            HomePage(items: List<String>.generate(5, (i) => 'Item $i')),
      },
    ));
