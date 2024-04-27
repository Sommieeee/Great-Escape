import 'package:flutter/material.dart';
import 'package:great_escape/theme/colors.dart';
import 'package:great_escape/ui/index.dart';
import 'package:great_escape/util/constants.dart';

class Menu extends StatefulWidget {
  static const String id = 'menu';
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _morning = TextEditingController();

  final TextEditingController _afternoon = TextEditingController();

  final TextEditingController _evening = TextEditingController();

  final TextEditingController _notes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 16,
              right: 16,
            ),
            child: Column(children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            'Today\'s Meal',
                            style: TextStyle(
                              fontFamily: "Montaga",
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Breakfast',
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
                      controller: _morning,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(fontSize: 17),
                      // validator: (value) {},
                      decoration: kFieldDecoration.copyWith(),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Lunch',
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
                      controller: _afternoon,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      // validator: (value) {},
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: kFieldDecoration.copyWith(),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Diner',
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
                      controller: _evening,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(fontSize: 17),
                      // validator: (value) {},
                      decoration: kFieldDecoration.copyWith(),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Notes",
                      style: TextStyle(
                        fontFamily: "Montaga",
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: _notes,
                      keyboardType: TextInputType.multiline,
                      minLines: 5,
                      maxLines: 6,
                      style: const TextStyle(fontSize: 17),
                      // validator: (value) {},
                      decoration: kFieldDecoration.copyWith(
                        hintText: '',
                        filled: true,
                        fillColor: white,
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0XFF969696),
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0XFF969696),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
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
                            'Send',
                            style: TextStyle(
                              fontFamily: "Montaga",
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
