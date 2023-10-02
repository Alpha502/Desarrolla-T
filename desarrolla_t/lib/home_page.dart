import 'package:flutter/material.dart';
import 'package:desarrolla_t/widget_page.dart';

import 'package:desarrolla_t/editEvent_page.dart';

class HomePage extends StatelessWidget {
  final List<String> items;

  const HomePage({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    const title = 'Desarrolla-T';

    return MaterialApp(
        title: title,
        home: Scaffold(
            drawer: const Drawer(child: Costado()),
            appBar: AppBar(
              title: const Text(title),
              actions: <Widget>[
                Builder(builder: (BuildContext context) {
                  return IconButton(
                    icon: Icon(Icons.add),
                    selectedIcon: const Icon(Icons.add),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NewPage()),
                      );
                    },
                  );
                })
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(
                      'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
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
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return const Center(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              InfoTarjeta(),
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
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return const Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              InfoPendiente()
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )));
  }
}
