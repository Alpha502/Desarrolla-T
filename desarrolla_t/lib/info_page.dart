import 'package:flutter/material.dart';
//import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import 'package:desarrolla_t/widget_page.dart';

void main() => runApp(const MaterialApp(home: InfoPage()));

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<InfoPage> {
  bool lightTheme = true;
  Color currentColor = Colors.amber;
  List<Color> currentColors = [Colors.yellow, Colors.green];
  List<Color> colorHistory = [];

  void changeColor(Color color) => setState(() => currentColor = color);
  void changeColors(List<Color> colors) =>
      setState(() => currentColors = colors);

  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      data: lightTheme ? ThemeData.light() : ThemeData.dark(),
      child: Builder(builder: (context) {
        return DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
                title: const Text('Nuevo evento'),
              ),
              body: Expanded(
                child: Column(
                  children: [
                    HSVColorPickerExample(
                      pickerColor: currentColor,
                      onColorChanged: changeColor,
                      colorHistory: colorHistory,
                      onHistoryChanged: (List<Color> colors) =>
                          colorHistory = colors,
                    ),
                  ],
                ),
              )),
        );
      }),
    );
  }
}
