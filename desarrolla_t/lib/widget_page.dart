import 'package:desarrolla_t/habits_page.dart';
import 'package:desarrolla_t/home_page.dart';
//import 'package:desarrolla_t/editEvent_page.dart';
import 'package:desarrolla_t/info_page.dart';
import 'package:desarrolla_t/profle_page.dart';
import 'package:flutter/material.dart';
import 'package:desarrolla_t/cale_page.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';

//DISEÑOS EN GENERAL

//----- ---DISEÑO DE LAS TARJETAS DE INFORMACION----------------------------------------------------------------------------------------------------------------------------------------------
class InfoTarjeta extends StatelessWidget {
  const InfoTarjeta({super.key, 
  required this.name, 
  required this.hour, 
  required this.date, 
  required this.place, 
  required this.color, 
  required this.notes, 
  required this.category});

  final String name;
  final String date;
  final String place;
  final int hour;
  final String color;
  final String notes;
  final String category;

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
                //color:  Color(0xFFFF6868),
                color: colorFromHex(color),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                name,
                                style: const TextStyle(fontSize: 18),
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.fade, //new
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                place,
                                style: const TextStyle(fontSize: 12),
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
                                  const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Text(
                                hour.toString(),
                                style: const TextStyle(fontSize: 15),
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.fade, //new
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
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
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: Column(
            children: [
              const Text('Drawer Header'),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Profile()),
                    );
                  },
                  icon: const Icon(Icons.person, size: 60)),
            ],
          ),
        ),
        ListTile(
          title: const Text('Home'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const HomePage()),
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
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Habits()),
            );
          },
        ),
      ],
    );
  }
}

//---------PENDIENTES EN PAG. PRINCIPAL (home_page)------------------------------------------------------------------------------------------------------------------
class InfoPendiente extends StatelessWidget {
  const InfoPendiente({super.key,
  required this.name,
  required this.hour,
  required this.date,
  required this.color
  });

  final String name;
  final String date;
  final int hour;
  final String color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(-0.81, 0.00),
          child: Container(
            width: 450,
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
        Align(
          alignment: const AlignmentDirectional(-0.54, -0.96),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
            child: Text(
              name
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
                color: colorFromHex(color),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.53, -1.15),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
            child: Text(
              date,
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
            width: 450,
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
              padding: const EdgeInsetsDirectional.fromSTEB(210, 10, 0, 10),
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
            width: 450,
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
              padding: const EdgeInsetsDirectional.fromSTEB(210, 10, 0, 10),
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
              icon: Icon(Icons.abc),
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

//--------DATE MODIFIER-----------------------------------------------------------------------------------------------------------------------
class DateModifier extends StatefulWidget {
  const DateModifier({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DatePicker();
  }
}

// ignore: unused_element
class _DateModifier extends State<DateModifier> {
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
        labelText: "02/10/2023",
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

//--------NAME MODIFIER-----------------------------------------------------------------------------------------------------------------------
class NameModifier extends StatefulWidget {
  const NameModifier({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NameModifier();
  }
}

class _NameModifier extends State<NameModifier> {
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
              icon: Icon(Icons.abc),
              labelText: 'Clase de Yoga', //Nombre de la actividad actual
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

//--------ProfileNameModifier-----------------------------------------------------------------------------------------------------------------------
class ProfileNameModifier extends StatefulWidget {
  const ProfileNameModifier({super.key});

  @override
  MyProfileNameModifier createState() {
    return MyProfileNameModifier();
  }
}

class MyProfileNameModifier extends State<ProfileNameModifier> {
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
              icon: Icon(Icons.abc),
              labelText: 'Nombre de usuario',
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

//--------ProfileNameModifier-----------------------------------------------------------------------------------------------------------------------
class ProfileDateModifier extends StatefulWidget {
  const ProfileDateModifier({super.key});

  @override
  MyProfileDateModifier createState() {
    return MyProfileDateModifier();
  }
}

class MyProfileDateModifier extends State<ProfileDateModifier> {
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
              icon: Icon(Icons.abc),
              labelText: 'Correo electronico',
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
