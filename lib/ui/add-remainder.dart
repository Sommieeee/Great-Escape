import 'package:flutter/material.dart';
import 'package:great_escape/theme/colors.dart';
import 'package:great_escape/ui/set-remainder.dart';
import 'package:great_escape/util/constants.dart';
import 'package:table_calendar/table_calendar.dart';

class AddRemainder extends StatefulWidget {
  static const String id = "addRemainder";
  const AddRemainder({super.key});

  @override
  State<AddRemainder> createState() => _AddRemainderState();
}

class _AddRemainderState extends State<AddRemainder> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  final TextEditingController _time = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: const Text(
          'Add A Reminder',
          style: TextStyle(
            fontFamily: "Montaga",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableCalendar(
              firstDay: kFirstDay,
              lastDay: kLastDay,
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                // Use `selectedDayPredicate` to determine which day is currently selected.
                // If this returns true, then `day` will be marked as selected.

                // Using `isSameDay` is recommended to disregard
                // the time-part of compared DateTime objects.
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(_selectedDay, selectedDay)) {
                  // Call `setState()` when updating the selected day
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                }
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  // Call `setState()` when updating calendar format
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                // No need to call `setState()` here
                _focusedDay = focusedDay;
              },
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Text(
                'Set Time',
                style: TextStyle(
                  fontFamily: "Montaga",
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: TextFormField(
                controller: _time,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                style: const TextStyle(fontSize: 17),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email cannot be empty';
                  }
                  if (!value.contains('@') || !value.contains('.')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                decoration: kFieldDecoration.copyWith(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Text(
                'Repeat',
                style: TextStyle(
                  fontFamily: "Montaga",
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: TextFormField(
                controller: _time,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                style: const TextStyle(fontSize: 17),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email cannot be empty';
                  }
                  if (!value.contains('@') || !value.contains('.')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                decoration: kFieldDecoration.copyWith(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Text(
                'Category',
                style: TextStyle(
                  fontFamily: "Montaga",
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: TextFormField(
                controller: _time,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                style: const TextStyle(fontSize: 17),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email cannot be empty';
                  }
                  if (!value.contains('@') || !value.contains('.')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                decoration: kFieldDecoration.copyWith(),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SetRemainder()));
              },
              child: Container(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                margin: const EdgeInsets.only(
                  right: 120,
                  left: 120,
                  bottom: 20,
                ),
                decoration: BoxDecoration(
                  color: purple100,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Center(
                  child: Text(
                    'Add',
                    style: TextStyle(
                      fontFamily: "Montaga",
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => const ViewEvents()));
                },
                child: const Text(
                  'Add New Reminder',
                  style: TextStyle(
                    color: purple100,
                    decoration: TextDecoration.underline,
                    fontFamily: "Montaga",
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
