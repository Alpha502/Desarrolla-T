import 'package:flutter/material.dart';
import 'package:desarrolla_t/widget_page.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:desarrolla_t/newEvent_page.dart';

class TableBasicsExample extends StatefulWidget {
  const TableBasicsExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TableBasicsExampleState createState() => _TableBasicsExampleState();
}

class _TableBasicsExampleState extends State<TableBasicsExample> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: Costado()),
      appBar: AppBar(
        title: const Text('TableCalendar - Basics'),
        actions: <Widget>[
          Builder(builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.add),
              selectedIcon: const Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewEvent()),
                );
              },
            );
          })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(_selectedDay, selectedDay)) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                }
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 20, 0),
                  child: Text(
                    'Hoy',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                SizedBox(height: 10),
                InfoPendientesHoy(),
                SizedBox(height: 10),
                InfoPendientesHoy()
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 20, 0),
                  child: Text(
                    'Proximamente',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                SizedBox(height: 10),
                InfoPendientes(),
                SizedBox(height: 10),
                InfoPendientes()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
