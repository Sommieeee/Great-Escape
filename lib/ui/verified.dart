import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:great_escape/ui/index.dart';

import '../theme/colors.dart';

class Verified extends StatefulWidget {
  const Verified({super.key});
  static const String id = 'verified';

  @override
  State<Verified> createState() => _VerifiedState();
}

class _VerifiedState extends State<Verified> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(bottom: 60, top: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/verified.png',
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Account Created Successfully!',
              style: TextStyle(
                fontFamily: 'Montaga',
                fontSize: 24,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Index()));
              },
              child: Container(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                margin: const EdgeInsets.only(
                  right: 50,
                  left: 50,
                ),
                decoration: BoxDecoration(
                  color: purple100,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montaga',
                      // fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
