import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:great_escape/theme/colors.dart';
import 'package:great_escape/ui/slider-screen.dart';

import '../util/size_config.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splashScreen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _navigate() {
    Timer(const Duration(milliseconds: 1700), () => _getBoolValuesSF());
  }

  @override
  void initState() {
    super.initState();
    _navigate();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/logo.jpg',
              width: 300,
              height: 400,
              fit: BoxFit.contain,
              // alignment: Alignment.center,
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: EdgeInsets.only(bottom: 40.0),
                child: CupertinoActivityIndicator(radius: 15)),
          ),
        ],
      ),
    );
  }

  void _getBoolValuesSF() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, SliderScreen.id);
  }
}
