import 'package:flutter/material.dart';
import 'package:great_escape/theme/colors.dart';
import 'package:great_escape/ui/index.dart';
import 'package:great_escape/util/constants.dart';

class Password extends StatefulWidget {
  static const String id = "password";
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
            top: 20,
            right: 16,
            left: 16,
          ),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.of(context).pop();
                            });
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                          )),
                      const SizedBox(
                        width: 80,
                      ),
                      const Center(
                        child: Text(
                          'Update Password',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Montaga',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/user.png',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              _buildForm(),
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
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Current Password',
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
            obscuringCharacter: '.',
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
              hintText: '.............',
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
            'New Password',
            style: TextStyle(
              fontFamily: 'Montaga',
              color: black100,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _newPassword,
            keyboardType: TextInputType.visiblePassword,
            obscureText: _obscureConfirmPassword,
            obscuringCharacter: '.',
            textInputAction: TextInputAction.done,
            validator: (value) {
              if (value!.isEmpty) return 'Confirm your password';
              if (value != _passwordController.text) {
                return 'Password mismatch';
              }
              return null;
            },
            decoration: kFieldDecoration.copyWith(
              hintText: '.............',
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
            obscuringCharacter: '.',
            textInputAction: TextInputAction.done,
            validator: (value) {
              if (value!.isEmpty) return 'Confirm your password';
              if (value != _passwordController.text) {
                return 'Password mismatch';
              }
              return null;
            },
            decoration: kFieldDecoration.copyWith(
              hintText: '.............',
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
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Index()));
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
                  'Done',
                  style: TextStyle(
                    fontFamily: "Montaga",
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
