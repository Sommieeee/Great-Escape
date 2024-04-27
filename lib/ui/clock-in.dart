import 'package:flutter/material.dart';
import 'package:great_escape/theme/colors.dart';
import 'package:great_escape/ui/schedule-event.dart';
import 'package:great_escape/ui/validation.dart';

import '../util/constants.dart';

class ClockIn extends StatefulWidget {
  static const String id = "clockIn";
  const ClockIn({super.key});

  @override
  State<ClockIn> createState() => _ClockInState();
}

class _ClockInState extends State<ClockIn> {
  final _notesFormKey = GlobalKey<FormState>();
  final TextEditingController _notes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 16,
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset("assets/images/map.png"),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Validation()));
                },
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                      right: 50,
                      left: 50,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0XFFEEEDED),
                    ),
                    child: const Text(
                      "Clock In",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontFamily: "Montaga",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Notes",
                style: TextStyle(
                  fontFamily: "Montaga",
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                key: _notesFormKey,
                child: TextFormField(
                  controller: _notes,
                  keyboardType: TextInputType.multiline,
                  minLines: 5,
                  maxLines: 6,
                  style: const TextStyle(fontSize: 17),
                  validator: (value) {
                    if (value!.isEmpty) return 'Enter complaint';
                    return null;
                  },
                  decoration: kFieldDecoration.copyWith(
                    hintText: '',
                    filled: true,
                    fillColor: white,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF969696),
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF969696),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ScheduleEvent()));
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
                      'Send',
                      style: TextStyle(
                        fontFamily: "Montaga",
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
