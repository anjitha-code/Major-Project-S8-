import 'dart:async';
import 'carousel.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DailyChallengesPage extends StatefulWidget {
  @override
  _DailyChallengesPageState createState() => _DailyChallengesPageState();
}

class _DailyChallengesPageState extends State<DailyChallengesPage> {
  late CalendarFormat _calendarFormat;
  late DateTime _focusedDay;
  late DateTime? _selectedDay;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _calendarFormat = CalendarFormat.month;
    _focusedDay = DateTime.now();
    _selectedDay = DateTime.now();

    // Update the focused day every day at midnight
    _timer = Timer.periodic(const Duration(days: 1), (Timer t) {
      setState(() {
        _focusedDay = DateTime.now();
        _selectedDay = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Daily",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        colors: [
                          Color.fromRGBO(255, 33, 113, 1.0),
                          Color.fromRGBO(101, 40, 247, 1.0),
                        ],
                      ).createShader(bounds);
                    },
                    child: const Text(
                      " Challenges",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 400, // Fixed height for the calendar
              child: TableCalendar(
                calendarFormat: _calendarFormat,
                focusedDay: _focusedDay,
                firstDay: DateTime(1990),
                lastDay: DateTime(2050),
                rowHeight: 45,
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: "Montserrat",
                  ),
                  leftChevronIcon:
                      Icon(Icons.chevron_left, color: Colors.white),
                  rightChevronIcon:
                      Icon(Icons.chevron_right, color: Colors.white),
                ),
                availableGestures: AvailableGestures.none, // Disable gestures
                onFormatChanged: _onFormatChanged,
                onDaySelected: _onDaySelected,
                selectedDayPredicate: _selectedDayPredicate,
                calendarStyle: const CalendarStyle(
                  defaultTextStyle: TextStyle(color: Colors.white),
                  weekendTextStyle:
                      TextStyle(color: Color.fromRGBO(101, 40, 247, 1.0)),
                  outsideTextStyle: TextStyle(color: Colors.grey),
                  selectedDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(255, 33, 113, 1.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: _onDoChallengePressed,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(160, 50),
                  backgroundColor: const Color.fromARGB(70, 109, 109, 109),
                  elevation: 10,
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  side: const BorderSide(
                      color: Color.fromARGB(33, 255, 255, 255), width: 1),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
                child: const Text(
                  'Do Challenge',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onFormatChanged(CalendarFormat format) {
    setState(() {
      _calendarFormat = format;
    });
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDay = selectedDay;
      _focusedDay = focusedDay;
    });
  }

  bool _selectedDayPredicate(DateTime day) {
    return isSameDay(_selectedDay, day);
  }

  void _onDoChallengePressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WordCarouselPage(selectedDate: _selectedDay!),
      ),
    );
  }
}
