import 'package:flutter/material.dart';
import 'package:great_escape/theme/colors.dart';
import 'package:great_escape/util/constants.dart';

class AddActivity extends StatefulWidget {
  static const String id = 'addActivity';
  const AddActivity({super.key});

  @override
  State<AddActivity> createState() => _AddActivityState();
}

class _AddActivityState extends State<AddActivity> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _reason = TextEditingController();

  final TextEditingController _name = TextEditingController();

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
          child: Column(children: [
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
                    'Add Activity',
                    style: TextStyle(
                      fontFamily: "Montaga",
                      fontSize: 28,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Name',
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
                    controller: _name,
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
                    'Reason',
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
                    controller: _reason,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    // validator: (value) {},
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: kFieldDecoration.copyWith(),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context) => const Index()));
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
                          'Add',
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
                    height: 120,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => const ViewEvents()));
                      },
                      child: const Text(
                        '+ Add New Activity',
                        style: TextStyle(
                          color: purple100,
                          fontFamily: "Montaga",
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
