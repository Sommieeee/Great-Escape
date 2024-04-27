import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:great_escape/theme/colors.dart';
import 'package:great_escape/ui/activities.dart';
import 'package:great_escape/ui/medications.dart';
import 'package:great_escape/ui/menu.dart';
import 'package:great_escape/ui/profile.dart';
import 'package:great_escape/ui/schedule-event.dart';
import 'package:great_escape/ui/set-remainder.dart';

import '../util/size_config.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static const String id = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple100,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, bottom: 27),
            width: SizeConfig.screenWidth,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Hello Chisomaga',
                        style: TextStyle(
                          fontFamily: 'Montaga',
                          fontSize: 24,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Profile()));
                          },
                          child: Image.asset(
                            'assets/images/user.png',
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 26, right: 24, left: 24),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                  color: Colors.white),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'What would you like to do ?',
                      style: TextStyle(
                        fontFamily: 'Montaga',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ScheduleEvent()));
                          },
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 29, right: 29, top: 30, bottom: 60),
                            height: 190,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/alarm.png'),
                                const SizedBox(
                                  height: 20,
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Schedule An Event',
                                    style: TextStyle(
                                      color: black100,
                                      fontFamily: 'Montaga',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SetRemainder()));
                          },
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 29, right: 29, top: 30, bottom: 60),
                            height: 190,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/buildings.png'),
                                const SizedBox(
                                  height: 20,
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Set A Reminder',
                                    style: TextStyle(
                                      color: black100,
                                      fontFamily: 'Montaga',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Monitor Heart Rate',
                      style: TextStyle(
                        fontFamily: 'Montaga',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/images/heart-rate.png'),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Activities()));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 25,
                          bottom: 25,
                          left: 15,
                          right: 10,
                        ),
                        decoration: const BoxDecoration(
                          color: purple100,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Today\'s Activity',
                              style: TextStyle(
                                fontFamily: "Montaga",
                                fontSize: 17,
                              ),
                            ),
                            Icon(
                              Icons.accessibility_new,
                              size: 40,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Medications()));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 25,
                          bottom: 25,
                          left: 15,
                          right: 15,
                        ),
                        decoration: const BoxDecoration(
                          color: purple100,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Today\'s Prescriptions',
                              style: TextStyle(
                                fontFamily: "Montaga",
                                fontSize: 17,
                              ),
                            ),
                            Image.asset('assets/images/vector.png'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Menu()));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 25,
                          bottom: 25,
                          left: 15,
                          right: 10,
                        ),
                        decoration: const BoxDecoration(
                          color: purple100,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Today\'s Menu',
                              style: TextStyle(
                                fontFamily: "Montaga",
                                fontSize: 17,
                              ),
                            ),
                            Image.asset('assets/images/menu.png'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
