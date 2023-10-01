import 'package:desarrolla_t/home_page.dart';
import 'package:desarrolla_t/info_page.dart';
import 'package:flutter/material.dart';
import 'package:desarrolla_t/cale_page.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
//import 'package:flutter/cupertino.dart' show CupertinoTextField;
import 'package:flutter/services.dart';

//DISEÑO DE LAS TARJETAS DE INFORMACION
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
            Navigator.pop(context);
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

//DRAWER
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

//PENDIENTES EN PAG. PRINCIPAL (home_page)
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

//PENDIENTES HOY (cale_page)
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

// PENDIENTES PROXIMAMENTE (cale_page)
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

// create some values
void copyToClipboard(String input) {
  String textToCopy = input.replaceFirst('#', '').toUpperCase();
  if (textToCopy.startsWith('FF') && textToCopy.length == 8) {
    textToCopy = textToCopy.replaceFirst('FF', '');
  }
  Clipboard.setData(ClipboardData(text: '#$textToCopy'));
}

class HSVColorPickerExample extends StatefulWidget {
  const HSVColorPickerExample({
    Key? key,
    required this.pickerColor,
    required this.onColorChanged,
    this.colorHistory,
    this.onHistoryChanged,
  }) : super(key: key);

  final Color pickerColor;
  final ValueChanged<Color> onColorChanged;
  final List<Color>? colorHistory;
  final ValueChanged<List<Color>>? onHistoryChanged;

  @override
  State<HSVColorPickerExample> createState() => _HSVColorPickerExampleState();
}

class _HSVColorPickerExampleState extends State<HSVColorPickerExample> {
  // Picker 1
  final PaletteType _paletteType = PaletteType.hsl;
  final bool _enableAlpha = true;
  final bool _displayThumbColor = true;
  final List<ColorLabelType> _labelTypes = [
    ColorLabelType.hsl,
    ColorLabelType.hsv
  ];
  final bool _displayHexInputBar = false;

  @override
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      titlePadding: const EdgeInsets.all(0),
                      contentPadding: const EdgeInsets.all(0),
                      content: SingleChildScrollView(
                        child: ColorPicker(
                          pickerColor: widget.pickerColor,
                          onColorChanged: widget.onColorChanged,
                          colorPickerWidth: 300,
                          pickerAreaHeightPercent: 0.7,
                          enableAlpha: _enableAlpha,
                          labelTypes: _labelTypes,
                          displayThumbColor: _displayThumbColor,
                          paletteType: _paletteType,
                          pickerAreaBorderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(2),
                            topRight: Radius.circular(2),
                          ),
                          hexInputBar: _displayHexInputBar,
                          colorHistory: widget.colorHistory,
                          onHistoryChanged: widget.onHistoryChanged,
                        ),
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.pickerColor,
                shadowColor: widget.pickerColor.withOpacity(1),
                elevation: 10,
              ),
              child: Text(
                'Color Picker with Slider',
                style: TextStyle(
                    color: useWhiteForeground(widget.pickerColor)
                        ? Colors.white
                        : Colors.black),
              ),
            ),
            const SizedBox(width: 20)
          ],
        ),
      ],
    );
  }
}
