import 'package:flutter/material.dart';
import 'package:great_escape/ui/validation.dart';

class ClockOut extends StatefulWidget {
  static const String id = "clockOut";
  const ClockOut({super.key});

  @override
  State<ClockOut> createState() => _ClockOutState();
}

class _ClockOutState extends State<ClockOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "Clock Out",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontFamily: "Montaga",
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
