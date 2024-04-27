import 'package:flutter/material.dart';
import 'package:great_escape/theme/colors.dart';
import 'package:great_escape/ui/index.dart';
import 'package:great_escape/util/constants.dart';

class Account extends StatefulWidget {
  static const String id = 'account';
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();

  final TextEditingController _username = TextEditingController();

  final TextEditingController _phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 16,
            right: 16,
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
                        width: 130,
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
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        fontFamily: "Montaga",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              _buildForm(),
              const SizedBox(
                height: 50,
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
                      'Update',
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
              hintText: 'Sommie',
              hintStyle: const TextStyle(
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
              hintText: 'chisomaga@gmail.com',
              hintStyle: const TextStyle(
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
              setState(() {});
            },
            // validator: (value) {},
            decoration: kFieldDecoration.copyWith(
              hintText: '+44797914311',
              hintStyle: const TextStyle(
                fontSize: 16,
                fontFamily: 'Montaga',
              ),
            ),
          )
        ],
      ),
    );
  }
}
