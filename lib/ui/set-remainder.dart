import 'package:flutter/material.dart';
import 'package:great_escape/ui/add-remainder.dart';
import 'package:great_escape/ui/index.dart';
import 'package:great_escape/ui/view-remainder.dart';
import '../theme/colors.dart';
import '../util/size_config.dart';

class SetRemainder extends StatefulWidget {
  static const String id = "setRemainder";
  const SetRemainder({super.key});

  @override
  State<SetRemainder> createState() => _SetRemainderState();
}

class _SetRemainderState extends State<SetRemainder> {
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
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Index()));
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
                      Image.asset(
                        'assets/images/buildings.png',
                      ),
                      const Text(
                        'Set A Reminder',
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
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddRemainder()));
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
                      'Add a Reminder',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Montaga',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ViewRemainder()));
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
                      'View Reminder',
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
