import 'package:flutter/material.dart';
import 'package:great_escape/theme/colors.dart';

class ViewRemainder extends StatefulWidget {
  static const String id = "viewRemainder";
  const ViewRemainder({super.key});

  @override
  State<ViewRemainder> createState() => _ViewRemainderState();
}

class _ViewRemainderState extends State<ViewRemainder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 18,
          right: 18,
        ),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pop();
                      });
                    },
                    child: const Icon(
                      Icons.arrow_back,
                    )),
                const SizedBox(
                  width: 120,
                ),
                const Center(
                  child: Text(
                    "Reminders",
                    style: TextStyle(
                      fontFamily: "Montaga",
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'New Reminder',
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
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'New Reminder',
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
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'New Reminder',
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
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'New Reminder',
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
          ],
        ),
      )),
    );
  }
}
