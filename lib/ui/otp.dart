import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:great_escape/ui/verified.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../theme/colors.dart';
import '../util/size_config.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});
  static const String id = 'otp';

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final _formKey = GlobalKey<FormState>();

  String _pin = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                size: 25,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Enter OTP code sent to you',
              style: TextStyle(
                fontFamily: 'Montaga',
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'An OTP code has been sent to your phone  your email address XXXXXXXXXX',
              style: TextStyle(
                fontFamily: 'Montaga',
                color: grey200,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(right: 22),
                child: PinCodeTextField(
                    appContext: context,
                    length: 4,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    cursorColor: black200,
                    obscureText: false,
                    textInputAction: TextInputAction.done,
                    animationType: AnimationType.fade,
                    enablePinAutofill: false,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montaga',
                      color: black100,
                      fontWeight: FontWeight.w500,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) return 'Enter your pin';
                      if (_pin.length != 4) {
                        return 'Enter a valid 4 digit pin';
                      }
                      return null;
                    },
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderWidth: 1,
                        fieldHeight: 75,
                        fieldWidth: 64,
                        activeFillColor: white,
                        inactiveFillColor: white,
                        selectedFillColor: white,
                        activeColor: black200,
                        selectedColor: black200,
                        errorBorderColor: black200,
                        inactiveColor: black200,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    enableActiveFill: true,
                    onChanged: (value) {
                      setState(() {
                        _pin = value;
                      });
                    }),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            RichText(
              text: TextSpan(
                  text: 'Didn\'t get an email?',
                  style: const TextStyle(
                    fontSize: 14,
                    color: grey200,
                    fontFamily: 'Montaga',
                  ),
                  children: [
                    TextSpan(
                      text: ' Resend',
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      style: const TextStyle(
                        color: black200,
                        fontFamily: 'Montaga',
                      ),
                    ),
                  ]),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Verified()));
              },
              child: Container(
                width: SizeConfig.screenWidth,
                padding: const EdgeInsets.only(top: 18, bottom: 18),
                decoration: BoxDecoration(
                  color: purple100,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Center(
                  child: Text(
                    'Continue',
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
    );
  }
}
