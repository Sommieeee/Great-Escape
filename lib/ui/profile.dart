import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:great_escape/ui/account.dart';
import 'package:great_escape/ui/password.dart';
import 'package:great_escape/ui/slider-screen.dart';

import '../theme/colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  static const String id = 'profile';

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 16,
            right: 16,
            bottom: 50,
          ),
          child: Column(children: [
            Center(
              child: Image.asset(
                'assets/images/user.png',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Montaga',
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 30,
                bottom: 30,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(4)),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Account()));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FittedBox(
                      child: Text(
                        'Account Information',
                        style: TextStyle(
                          color: black100,
                          fontFamily: 'Montaga',
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.navigate_next,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Password()));
              },
              child: Container(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 30,
                  bottom: 30,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(4)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FittedBox(
                      child: Text(
                        'Password and Security',
                        style: TextStyle(
                          color: black100,
                          fontFamily: 'Montaga',
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.navigate_next,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SliderScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Montaga',
                    ),
                  ),
                  Image.asset(
                    'assets/images/login.png',
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
