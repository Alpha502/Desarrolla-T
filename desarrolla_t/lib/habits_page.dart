// ignore_for_file: file_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:desarrolla_t/widget_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';



/*class Habits extends StatelessWidget {
  const Habits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habitos'),
      ),
      body:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Expanded(child:
                        Column(
                          children: [
                            const Text('habito 1'),
                            Image.network('https://www.modux.co/wp-content/uploads/2017/02/Anillos8-Tableau.png')
                          ],
                        ) 
                      ),
                      Expanded(child:
                        Column(
                          children: [
                            const Text('habito 2'),
                            Image.network('https://www.modux.co/wp-content/uploads/2017/02/Anillos8-Tableau.png')
                          ],
                        ) 
                      ),
                      Expanded(child:
                        Column(
                          children: [
                            const Text('habito 3'),
                            Image.network('https://www.modux.co/wp-content/uploads/2017/02/Anillos8-Tableau.png')
                          ],
                        ) 
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(child: 
                Padding(padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text('Habito 1', textAlign: TextAlign.right),
                      Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMa24dOHX4vvomtBRaYhJZH2YtMCcL7wguzQ&usqp=CAU')
                    ],
                  )
                ),
              ),
              Expanded(child: 
                Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Habito 2', textAlign: TextAlign.right),
                    Image.network('https://cdn.exceltotal.com/wp-content/uploads/2012/03/crear-un-grafico-circular-con-subgrafico-08.png', scale:2, alignment: Alignment.center,)
                  ],
                ),
              ),
            ],
          ),
    );
  }
}
*/

class Habits extends StatelessWidget {
  const Habits({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  _MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

late List<GDPData> _chartData;
late TooltipBehavior _tooltipBehavior;

class _MyHomePageState extends State<_MyHomePage> {

  CollectionReference eventos = FirebaseFirestore.instance.collection('habits');
  String? uid = FirebaseAuth.instance.currentUser?.uid;
  //late Map<String, dynamic> data;

  List<_SalesData> data = [
    _SalesData('Jan', 10),
    _SalesData('Feb', 8),
    _SalesData('Mar', 14),
    _SalesData('Apr', 12),
    _SalesData('May', 10)
  ];

  /* SE DOCUMENTA POR FALLOS CON CONECCIÓN CON FIREBASE, PARA QUE SE PUEDAN MOSTRAR LAS GRÁFICAS 
  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(child: Costado()),
        appBar: AppBar(
          title: const Text('Syncfusion Flutter chart'),
        ),
        body: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Graficas",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Color.fromRGBO(118, 123, 226, 1)),
              ),
              FutureBuilder<DocumentSnapshot>(
                future: eventos.doc(uid).get(),
                builder:
                  (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

                    if (snapshot.hasError) {
                      return const Text("Ocurrio un error");
                    }

                    if (snapshot.hasData && !snapshot.data!.exists) {
                      return const Text("No existen habitos aun");
                    }

                    if (snapshot.connectionState == ConnectionState.done) {
                      data = snapshot.data!.data() as Map<String, dynamic>;
                    }
                    return ListView(
                      children: [
                        Column(
                          children: [
                            SfCartesianChart(
                            primaryXAxis: CategoryAxis(),
                            // Chart title
                            title: ChartTitle(
                                text: 'Habitos completados por mes',
                                borderWidth: 10,

                                // Aligns the chart title to left
                                alignment: ChartAlignment.near,
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 157, 157, 157),
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                )),
                            // Enable legend
                            legend: Legend(isVisible: true),
                            // Enable tooltip
                            tooltipBehavior: TooltipBehavior(enable: true),
                            series: <ChartSeries<_SalesData, String>>[
                              LineSeries<_SalesData, String>(
                                  dataSource: data2,
                                  xValueMapper: (_SalesData sales, _) => sales.year,
                                  yValueMapper: (_SalesData sales, _) => sales.sales,
                                  name: 'Tareas completadas',
                                  // Enable data label
                                  dataLabelSettings: DataLabelSettings(isVisible: true))
                            ]),
                        SfCircularChart(
                          title: ChartTitle(
                              text: 'Principales categorias',
                              borderWidth: 5,

                              // Aligns the chart title to left
                              alignment: ChartAlignment.near,
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 157, 157, 157),
                                fontFamily: 'Roboto',
                                fontSize: 20,
                              )),
                          legend: Legend(isVisible: true),
                          tooltipBehavior: _tooltipBehavior,
                          series: <CircularSeries>[
                            DoughnutSeries<GDPData, String>(
                              dataSource: _chartData,
                              dataLabelSettings: DataLabelSettings(isVisible: true),
                              xValueMapper: (GDPData data2, _) => data2.continent,
                              yValueMapper: (GDPData data2, _) => data2.gdp,
                              enableTooltip: true,
                            ),
                          ],
                        )
                          ],
                        )
                      ],
                    );
                  }
              )
            ]
        )
    );
  }
}
*/

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(child: Costado()),
        appBar: AppBar(
          title: const Text('Syncfusion Flutter chart'),
        ),
        body: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Graficas",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Color.fromRGBO(118, 123, 226, 1)),
              ),
              //Initialize the chart widget
              SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  // Chart title
                  title: ChartTitle(
                      text: 'Habitos completados por mes',
                      borderWidth: 10,
                      // Aligns the chart title to left
                      alignment: ChartAlignment.near,
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 157, 157, 157),
                        fontFamily: 'Roboto',
                        fontSize: 20,
                      )),
                  // Enable legend
                  legend: Legend(isVisible: true),
                  // Enable tooltip
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <ChartSeries<_SalesData, String>>[
                    LineSeries<_SalesData, String>(
                        dataSource: data,
                        xValueMapper: (_SalesData sales, _) => sales.year,
                        yValueMapper: (_SalesData sales, _) => sales.sales,
                        name: 'Tareas completadas',
                        // Enable data label
                        dataLabelSettings: DataLabelSettings(isVisible: true))
                  ]),
              SfCircularChart(
                title: ChartTitle(
                    text: 'Principales categorias',
                    borderWidth: 5,
                    // Aligns the chart title to left
                    alignment: ChartAlignment.near,
                    textStyle: TextStyle(
                      color: Color.fromARGB(255, 157, 157, 157),
                      fontFamily: 'Roboto',
                      fontSize: 20,
                    )),
                legend: Legend(isVisible: true),
                tooltipBehavior: _tooltipBehavior,
                series: <CircularSeries>[
                  DoughnutSeries<GDPData, String>(
                    dataSource: _chartData,
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    xValueMapper: (GDPData data, _) => data.continent,
                    yValueMapper: (GDPData data, _) => data.gdp,
                    enableTooltip: true,
                  ),
                ],
              )
            ]));
  }
}     

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}

List<GDPData> getChartData() {
  final List<GDPData> chartData = [
    GDPData('Escuela', 10),
    GDPData('Citas', 2),
    GDPData('Familia', 5)
  ];
  return chartData;
}
