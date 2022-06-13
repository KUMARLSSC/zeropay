import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      //height: size.width * 0.80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color.fromARGB(
          254,
          54,
          215,
          133,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(95, 0, 0, 0),
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: TableCalendar(
        calendarFormat: CalendarFormat.month,
        calendarStyle: const CalendarStyle(
            todayDecoration: BoxDecoration(
                // ignore: prefer_const_constructors
                color: Color.fromARGB(
                  255,
                  143,
                  239,
                  190,
                ),
                shape: BoxShape.circle),
            selectedDecoration: BoxDecoration(
                // ignore: prefer_const_constructors
                color: Color.fromARGB(
                  255,
                  143,
                  239,
                  190,
                ),
                shape: BoxShape.circle),
            // ignore: prefer_const_constructors
            withinRangeTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontFamily: 'Poppins',
            ),
            // ignore: prefer_const_constructors
            defaultTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontFamily: 'Poppins',
            ),
            // ignore: prefer_const_constructors
            disabledTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontFamily: 'Poppins',
            ),
            // ignore: prefer_const_constructors
            weekendTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontFamily: 'Poppins',
            )),
        daysOfWeekStyle: const DaysOfWeekStyle(
          weekdayStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 12,
            fontFamily: 'Poppins',
          ),
          weekendStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 12,
            fontFamily: 'Poppins',
          ),
        ),
        headerStyle: const HeaderStyle(
          titleCentered: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
          leftChevronIcon: Icon(
            Icons.keyboard_arrow_left,
            size: 20,
            color: Colors.white,
          ),
          formatButtonTextStyle: TextStyle(color: Colors.blue),
          rightChevronIcon: Icon(
            Icons.keyboard_arrow_right,
            size: 20,
            color: Colors.white,
          ),
          formatButtonVisible: false,
        ),
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
      ),
    );
  }
}
