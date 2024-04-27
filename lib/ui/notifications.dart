import 'package:flutter/material.dart';
import 'package:great_escape/theme/colors.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});
  static const String id = 'notifictions';

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 24,
        ),
        child: Column(
          children: [
            const Center(
              child: Text(
                'Notifications',
                style: TextStyle(
                  fontFamily: 'Montaga',
                  fontSize: 32,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Stephanie rescheduled an event',
                          style: TextStyle(
                            fontFamily: 'Montaga',
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: purple100,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Stephanie rescheduled the GP appointment at Lane End \nmedical group on Wednesday 9th February 2....',
                      style: TextStyle(
                        fontFamily: 'Montaga',
                        color: grey100,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                      color: const Color(0XFF000000).withOpacity(0.24),
                      width: 0.5,
                    )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Stephanie rescheduled an event',
                          style: TextStyle(
                            fontFamily: 'Montaga',
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: purple100,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Stephanie rescheduled the GP appointment at Lane End \nmedical group on Wednesday 9th February 2....',
                      style: TextStyle(
                        fontFamily: 'Montaga',
                        color: grey100,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                      color: const Color(0XFF000000).withOpacity(0.24),
                      width: 0.5,
                    )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
