import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:great_escape/theme/colors.dart';
import 'package:great_escape/ui/index.dart';
import 'package:great_escape/ui/sign-up.dart';
import 'package:great_escape/util/constants.dart';

class Login extends StatefulWidget {
  static const String id = "login";
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();

  final TextEditingController _password = TextEditingController();

  String? _passwordValidator;

  bool _obscurePassword = true;
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
                'Welcome Back!',
                style: TextStyle(
                  fontFamily: "Montaga",
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              _buildForm(),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontFamily: "Montaga",
                    color: black100,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Index()));
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
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Montaga",
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
                      text: 'Don\'t have an account? ',
                      style: const TextStyle(
                          fontSize: 14,
                          color: black100,
                          fontFamily: 'Montaga',
                          fontWeight: FontWeight.w700),
                      children: [
                        TextSpan(
                          text: 'Sign up ',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SignUp()));
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
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Username or Email',
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
            style: const TextStyle(fontSize: 17),
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
            height: 25,
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
        ],
      ),
    );
  }
}
