import 'package:flutter/material.dart';
import 'package:great_escape/theme/colors.dart';
import 'package:great_escape/ui/index.dart';

class Validation extends StatefulWidget {
  static const String id = "validation";
  const Validation({super.key});

  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 220,
          ),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/validation.png",
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Validation Completed!',
                  style: TextStyle(
                    fontFamily: "Montaga",
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Index()));
                  },
                  child: const Text(
                    'Go Home',
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
