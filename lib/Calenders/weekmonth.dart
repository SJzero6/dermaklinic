import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({super.key});

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  DateTime _today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(left: 10),
              alignment: Alignment.topLeft,
              child: Text(
                "Month View",
                style: TextStyle(
                    color: Color.fromARGB(255, 5, 30, 51),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Card(
              color: Colors.grey[300],
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: TableCalendar(
                  locale: "en_US",
                  rowHeight: 45,
                  headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: true,
                      titleTextStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  availableGestures: AvailableGestures.all,
                  selectedDayPredicate: (day) => isSameDay(day, _today),
                  focusedDay: _today,
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14)),
            ),
          )
        ],
      ),
    );
  }
}
