import 'package:flutter/material.dart';
import 'package:desarrolla_t/cale_page.dart';

class InfoTarjeta extends StatelessWidget {
  const InfoTarjeta({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(-1.00, -1.00),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(100, 0, 0, 0),
            child: Container(
              width: 80,
              height: 41,
              decoration: BoxDecoration(
                color: const Color(0xFFFF6868),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        Align(
            alignment: const AlignmentDirectional(-0.18, 0.00),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
              child: Container(
                  width: 180,
                  height: 120,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 228, 227, 227),
                      borderRadius: BorderRadius.circular(7)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'CLASE DE COCINA',
                              style: TextStyle(fontSize: 18),
                              softWrap: true,
                              maxLines: 2,
                              overflow: TextOverflow.fade, //new
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'En el Iteso',
                              style: TextStyle(fontSize: 12),
                              softWrap: true,
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              overflow: TextOverflow.fade, //new
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Text(
                              '8 - 9 pm',
                              style: TextStyle(fontSize: 15),
                              softWrap: true,
                              maxLines: 2,
                              overflow: TextOverflow.fade, //new
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                    ],
                  )),
            )),
      ],
    );
  }
}

class Costado extends StatelessWidget {
  const Costado({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Drawer Header'),
        ),
        ListTile(
          title: const Text('Home'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Calendario'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TableBasicsExample()),
            );
          },
        ),
        ListTile(
          title: const Text('Habitos'),
          onTap: () {},
        ),
      ],
    );
  }
}

class InfoPendiente extends StatelessWidget {
  const InfoPendiente({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(-0.81, 0.00),
          child: Container(
            width: 400,
            height: 77,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 228, 228, 228),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(10),
              ),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-0.80, 0.00),
          child: Container(
            width: 12,
            height: 76,
            decoration: const BoxDecoration(
              color: Colors.amber,
            ),
          ),
        ),
        const Align(
          alignment: AlignmentDirectional(-0.54, -0.96),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
            child: Text(
              'Hello World',
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(-0.58, -0.94),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
            child: Container(
              width: 100,
              height: 23,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        const Align(
          alignment: AlignmentDirectional(0.23, -1.15),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
            child: Text(
              'Hello World',
            ),
          ),
        ),
      ],
    );
  }
}

class InfoPendientes extends StatelessWidget {
  const InfoPendientes({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(-0.81, 0.00),
          child: Container(
            width: 400,
            height: 77,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 228, 228, 228),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(10),
              ),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-0.80, 0.00),
          child: Container(
            width: 12,
            height: 76,
            decoration: const BoxDecoration(
              color: Colors.amber,
            ),
          ),
        ),
        const Align(
          alignment: AlignmentDirectional(-0.54, -0.96),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
            child: Text(
              'Hello World',
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(-0.58, -0.94),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
            child: Container(
              width: 100,
              height: 23,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        const Align(
          alignment: AlignmentDirectional(0.23, -1.15),
          child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              child: ListTile(
                title: Text('Thomas Jefferson'),
              )),
        ),
      ],
    );
  }
}
