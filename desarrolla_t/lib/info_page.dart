import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  _InfoPage createState() => _InfoPage();
}

class _InfoPage extends State<InfoPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Detalles'),
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(-0.84, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Container(
                      width: 374,
                      height: 378,
                      decoration: BoxDecoration(
                        color: const Color(0xDBE2E2E2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 140, 0, 0),
                              child: Text(
                                'Notas',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Text(
                              'Tengo Que llevar mi propio tapete porque ahi no tienen',
                              textAlign: TextAlign.justify,
                              maxLines: 4,
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontSize: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 18, 0, 0),
                              child: Container(
                                width: 100,
                                height: 33,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF8599B2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Text(
                                    'Categoria',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.94, -0.94),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                    child: Container(
                      width: 377,
                      height: 119,
                      decoration: const BoxDecoration(
                        color: Color(0xFFEF9D39),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 15, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Evento',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Readex Pro',
                                    fontSize: 12,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Text(
                                    'CLASE DE YOGA',
                                    style: TextStyle(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 15, 0, 0),
                                  child: Text(
                                    'Oct. 26',
                                    style: TextStyle(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 10, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Hora',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Readex Pro',
                                    fontSize: 12,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Text(
                                    '6 pm',
                                    style: TextStyle(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row()
          ],
        ),
      ),
    );
  }
}
