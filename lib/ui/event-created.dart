import 'package:flutter/material.dart';
import 'package:great_escape/theme/colors.dart';
import 'package:great_escape/ui/view-events.dart';

class EventCreated extends StatefulWidget {
  static const String id = "eventCreated";
  const EventCreated({super.key});

  @override
  State<EventCreated> createState() => _EventCreatedState();
}

class _EventCreatedState extends State<EventCreated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 90,
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/created.png",
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Event Created",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Montaga",
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ViewEvents()));
                  },
                  child: const Text(
                    'View Event',
                    style: TextStyle(
                      color: purple100,
                      decoration: TextDecoration.underline,
                      fontFamily: "Montaga",
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
