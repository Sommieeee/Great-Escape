import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:great_escape/ui/login.dart';
import 'package:great_escape/ui/verify.dart';

import '../theme/colors.dart';
import '../util/constants.dart';

class SignUp extends StatefulWidget {
  static const String id = "signUp";
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();

  final TextEditingController _username = TextEditingController();

  final TextEditingController _phone = TextEditingController();

  final TextEditingController _password = TextEditingController();

  final TextEditingController _confirmPassword = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String? _phoneValidator;

  String? _passwordValidator;

  bool _obscurePassword = true;

  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            // top: 90,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    width: 260,
                    height: 260,
                  ),
                ),
                const Text(
                  'Welcome!',
                  style: TextStyle(
                    fontFamily: 'Montaga',
                    fontSize: 28,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                _buildForm(),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Verify()));
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    margin: const EdgeInsets.only(
                      right: 18,
                      left: 18,
                    ),
                    decoration: BoxDecoration(
                      color: purple100,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montaga',
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                        text: 'Already have an account? ',
                        style: const TextStyle(
                            fontSize: 14,
                            color: black100,
                            fontFamily: 'Montaga',
                            fontWeight: FontWeight.w700),
                        children: [
                          TextSpan(
                            text: 'Sign in ',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Login()));
                              },
                            style: const TextStyle(
                              color: grey100,
                              fontFamily: 'Montaga',
                            ),
                          ),
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Username',
            style: TextStyle(
              fontFamily: 'Montaga',
              color: black100,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            textCapitalization: TextCapitalization.words,
            controller: _username,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            style: const TextStyle(fontSize: 16),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter a Username';
              }

              return null;
            },
            decoration: kFieldDecoration.copyWith(
              hintText: 'Enter your username',
              hintStyle: const TextStyle(
                color: grey100,
                fontSize: 16,
                fontFamily: 'Montaga',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Email',
            style: TextStyle(
              fontSize: 14,
              color: Color(0XFF000000),
              fontFamily: 'Montaga',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _email,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            style: const TextStyle(fontSize: 16),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Email cannot be empty';
              }
              if (!value.contains('@') || !value.contains('.')) {
                return 'Please enter a valid email';
              }
              return null;
            },
            decoration: kFieldDecoration.copyWith(
              hintText: 'Enter your email',
              hintStyle: TextStyle(
                color: Colors.black.withOpacity(0.3),
                fontSize: 16,
                fontFamily: 'Montaga',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Phone Number',
            style: TextStyle(
              color: black100,
              fontFamily: 'Montaga',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _phone,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            style: const TextStyle(
              fontSize: 16,
            ),
            onChanged: (value) {
              setState(() {
                _phoneValidator = null;
              });
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter a valid 11 digits phone number';
              }
              if (value.length != 11) {
                return 'Enter a valid 11 digits phone number';
              }
              return _phoneValidator;
            },
            decoration: kFieldDecoration.copyWith(
              hintText: 'Enter your number',
              hintStyle: const TextStyle(
                color: grey100,
                fontSize: 16,
                fontFamily: 'Montaga',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Password',
            style: TextStyle(
              fontSize: 14,
              color: Color(0XFF000000),
              fontFamily: 'Montaga',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _password,
            keyboardType: TextInputType.visiblePassword,
            obscureText: _obscurePassword,
            obscuringCharacter: 'X',
            textInputAction: TextInputAction.done,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter your password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters';
              }
              return _passwordValidator;
            },
            onChanged: (value) {
              setState(() {
                _passwordValidator = null;
              });
            },
            decoration: kFieldDecoration.copyWith(
              hintText: 'XXXXXXXXXX',
              hintStyle: TextStyle(
                color: Colors.black.withOpacity(0.3),
                fontSize: 16,
                fontFamily: 'Montaga',
              ),
              suffixIcon: InkWell(
                onTap: () {
                  if (!mounted) return;
                  setState(() => _obscurePassword = !_obscurePassword);
                },
                child: Icon(
                  _obscurePassword ? Icons.visibility_off : Icons.visibility,
                  color: black100,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Confirm Password',
            style: TextStyle(
              fontFamily: 'Montaga',
              color: black100,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _confirmPassword,
            keyboardType: TextInputType.visiblePassword,
            obscureText: _obscureConfirmPassword,
            obscuringCharacter: 'X',
            textInputAction: TextInputAction.done,
            validator: (value) {
              if (value!.isEmpty) return 'Confirm your password';
              if (value != _passwordController.text) {
                return 'Password mismatch';
              }
              return null;
            },
            decoration: kFieldDecoration.copyWith(
              hintText: 'XXXXXXXXXX',
              hintStyle: const TextStyle(
                color: grey100,
                fontSize: 16,
                fontFamily: 'Montaga',
              ),
              suffixIcon: InkWell(
                onTap: () {
                  if (!mounted) return;
                  setState(
                      () => _obscureConfirmPassword = !_obscureConfirmPassword);
                },
                child: Icon(
                  _obscureConfirmPassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: black100,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
