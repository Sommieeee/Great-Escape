import 'package:flutter/material.dart';
import 'package:great_escape/theme/colors.dart';
import 'package:great_escape/ui/add-event.dart';
import 'package:great_escape/ui/index.dart';
import 'package:great_escape/ui/view-events.dart';

import '../util/size_config.dart';

class ScheduleEvent extends StatefulWidget {
  static const String id = "schedule";

  const ScheduleEvent({super.key});

  @override
  State<ScheduleEvent> createState() => _ScheduleEventState();
}

class _ScheduleEventState extends State<ScheduleEvent> {
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
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Index()));
                        });
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        size: 30,
                      )),
                  const SizedBox(
                    width: 80,
                  ),
                  Column(
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/alarm.png",
                        ),
                      ),
                      const Text(
                        'Schedule An Event',
                        style: TextStyle(
                          fontFamily: "Montaga",
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddEvent()));
                },
                child: Container(
                  width: SizeConfig.screenWidth,
                  padding: const EdgeInsets.only(top: 28, bottom: 28),
                  decoration: BoxDecoration(
                    color: purple100,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Center(
                    child: Text(
                      'Start An Event',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Montaga',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ViewEvents()));
                },
                child: Container(
                  width: SizeConfig.screenWidth,
                  padding: const EdgeInsets.only(top: 28, bottom: 28),
                  decoration: BoxDecoration(
                    color: purple100,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Center(
                    child: Text(
                      'View Events',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Montaga',
                          fontWeight: FontWeight.w700),
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
