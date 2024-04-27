import 'package:flutter/material.dart';
import 'package:great_escape/ui/otp.dart';

import '../theme/colors.dart';

class Verify extends StatefulWidget {
  static String id = 'verify';
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 70,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/verify.png',
                ),
                const SizedBox(
                  height: 70,
                ),
                const Text(
                  'Verify Your Email Address',
                  style: TextStyle(
                    fontFamily: 'Montaga',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'An Otp  code has been sent to',
                  style: TextStyle(
                    fontFamily: 'Montaga',
                    fontSize: 20,
                  ),
                ),
                const Text(
                  ' your email address',
                  style: TextStyle(
                    fontFamily: 'Montaga',
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Otp()));
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
          ),
        ),
      ),
    );
  }
}
