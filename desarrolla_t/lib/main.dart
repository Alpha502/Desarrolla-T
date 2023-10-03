import 'package:desarrolla_t/habits_page.dart';
import 'package:flutter/material.dart';
import 'package:desarrolla_t/home_page.dart';
import 'package:desarrolla_t/cale_page.dart';
import 'package:desarrolla_t/newEvent_page.dart';
import 'package:desarrolla_t/info_page.dart';
import 'package:desarrolla_t/editEvent_page.dart';

void main() => runApp(MaterialApp(
      title: 'Rutas',
      home: HomePage(
        items: List<String>.generate(5, (i) => 'Item $i'),
      ),
      routes: {
        '/habitpage': (context) => const Habits(),
        '/newpage': (context) => const NewEvent(),
        '/infopage': (context) => const InfoPage(),
        '/editeventpage': (context) => const ModifyEvent(),
        '/calpage': (context) => const TableBasicsExample(),
        '/homepage': (context) =>
            HomePage(items: List<String>.generate(5, (i) => 'Item $i')),
      },
    ));
