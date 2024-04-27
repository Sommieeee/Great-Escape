import 'package:flutter/material.dart';
import 'package:great_escape/ui/sign-up.dart';

import '../theme/colors.dart';
import '../util/size_config.dart';
import 'login.dart';

class SliderScreen extends StatefulWidget {
  static const String id = "sliderScreen";
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/con-care.png",
                  width: 400,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Welcome To Great Escape!',
                        style: TextStyle(
                          fontFamily: 'Montaga',
                          fontSize: 28,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Empowering Memories, Enriching Lives',
                      style: TextStyle(
                        fontFamily: 'Montaga',
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Caring made easy',
                      style: TextStyle(
                        fontFamily: 'Montaga',
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 50, right: 50),
                    width: SizeConfig.screenWidth,
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    decoration: BoxDecoration(
                      color: purple100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: white,
                          fontSize: 18,
                          fontFamily: 'Montaga',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUp()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 50, right: 50),
                    width: SizeConfig.screenWidth,
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: black100),
                      color: white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: black100,
                          fontSize: 18,
                          fontFamily: 'Montaga',
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
