import 'package:desarrolla_t/home_page.dart';
import 'package:desarrolla_t/editEvent_page.dart';
import 'package:desarrolla_t/info_page.dart';
import 'package:flutter/material.dart';
import 'package:desarrolla_t/cale_page.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';

//----- ---DISEÑO DE LAS TARJETAS DE INFORMACION----------------------------------------------------------------------------------------------------------------------------------------------
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
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InfoPage()),
            );
          },
          child: Align(
              alignment: const AlignmentDirectional(-0.18, 0.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Container(
                    width: 180,
                    height: 100,
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
        ),
      ],
    );
  }
}

//---------DRAWER------------------------------------------------------------------------------------------------------------------------------------------------------
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
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomePage(
                      items: List<String>.generate(5, (i) => 'Item $i'))),
            );
          },
        ),
        ListTile(
          title: const Text('Calendario'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const TableBasicsExample()),
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

//---------PENDIENTES EN PAG. PRINCIPAL (home_page)------------------------------------------------------------------------------------------------------------------
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
          alignment: const AlignmentDirectional(-0.58, -0.94),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
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
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------

//--------PENDIENTES HOY (cale_page)----------------------------------------------------------------------------------------------------------------------------------------
class InfoPendientesHoy extends StatefulWidget {
  const InfoPendientesHoy({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InfoPendientesHoy createState() => _InfoPendientesHoy();
}

class _InfoPendientesHoy extends State<InfoPendientesHoy> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
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
              color: Colors.blue,
            ),
          ),
        ),
        const Align(
          alignment: AlignmentDirectional(-0.54, -0.96),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
            child: Text(
              '6:00 pm',
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-0.58, -0.94),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
            child: Container(
              width: 80,
              height: 23,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('data')],
              ),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.23, -1.15),
          child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(160, 10, 0, 10),
              child: ListTile(
                  title: const Text('Actividad por entregar'),
                  trailing: Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ))),
        ),
      ],
    );
  }
}
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------

//-------PENDIENTES PROXIMAMENTE (cale_page)----------------------------------------------------------------------------------------------------------------------------------------------------
class InfoPendientes extends StatefulWidget {
  const InfoPendientes({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InfoPendientesState createState() => _InfoPendientesState();
}

class _InfoPendientesState extends State<InfoPendientes> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
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
              color: Colors.green,
            ),
          ),
        ),
        const Align(
          alignment: AlignmentDirectional(-0.54, -0.96),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
            child: Text(
              '23/07/2023',
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-0.58, -0.94),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
            child: Container(
              width: 80,
              height: 23,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('data')],
              ),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.23, -1.15),
          child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(160, 10, 0, 10),
              child: ListTile(
                  title: const Text('Actividad por entregar'),
                  trailing: Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ))),
        ),
      ],
    );
  }
}

//--------BOTON PARA EL COLOR PICKER-----------------------------------------------------------------------------------------------------------------------
class BotonColor extends StatefulWidget {
  const BotonColor({super.key});

  @override
  State<BotonColor> createState() => _BotonColorState();
}

class _BotonColorState extends State<BotonColor> {
  Color mycolor = Colors.lightBlue;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Pick a color!'),
                content: SingleChildScrollView(
                  child: ColorPicker(
                    paletteType: PaletteType.hueWheel,
                    hexInputBar: true,
                    pickerColor: mycolor, //default color
                    onColorChanged: (Color color) {
                      //on color picked
                      setState(() {
                        mycolor = color;
                      });
                    },
                  ),
                ),
                actions: <Widget>[
                  ElevatedButton(
                    child: const Text('DONE'),
                    onPressed: () {
                      Navigator.of(context).pop(); //dismiss the color picker
                    },
                  ),
                ],
              );
            });
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(18),
        backgroundColor: mycolor, // Background color
      ),
      child: const Icon(Icons.tune),
    );
  }
}

//--------DATE PICKER-----------------------------------------------------------------------------------------------------------------------
class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DatePicker();
  }
}

class _DatePicker extends State<DatePicker> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: dateInput,
      decoration: const InputDecoration(
        icon: Icon(Icons.calendar_today),
        labelText: "Selecciona una fecha",
      ),
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime(2100));

        if (pickedDate != null) {
          //print(pickedDate);
          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          //print(formattedDate);

          setState(() {
            dateInput.text = formattedDate;
          });
        } else {}
      },
    );
  }
}

//--------NAME INPUT-----------------------------------------------------------------------------------------------------------------------
class NameInput extends StatefulWidget {
  const NameInput({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<NameInput> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              icon: Icon(Icons.text_decrease),
              labelText: 'Nombre del evento',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}

//--------Category INPUT-----------------------------------------------------------------------------------------------------------------------

const List<String> list = <String>[
  'Categoria 1',
  'Categoria 2',
  'Categoria 3',
  'Categoria 4'
];

class CategoryInput extends StatefulWidget {
  const CategoryInput({super.key});

  @override
  State<CategoryInput> createState() => _CategoryInput();
}

class _CategoryInput extends State<CategoryInput> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.lightBlue),
          underline: Container(
            width: double.infinity,
            height: 2,
            color: Colors.lightBlue,
          ),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}


//--------TARJETA DE INFORMACION DEL EVENTO-----------------------------------------------------------------------------------------------------------------------
