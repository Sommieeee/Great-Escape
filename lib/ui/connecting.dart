import 'package:flutter/material.dart';
import 'package:great_escape/theme/colors.dart';
import 'package:great_escape/util/constants.dart';

class Connecting extends StatefulWidget {
  static const String id = 'connecting';
  const Connecting({super.key});

  @override
  State<Connecting> createState() => _ConnectingState();
}

class _ConnectingState extends State<Connecting> {
  final _notesFormKey = GlobalKey<FormState>();
  final TextEditingController _notes = TextEditingController();

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
                      'Connect',
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
              Center(
                child: Image.asset("assets/images/map.png"),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => const Validation()));
                },
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                      right: 50,
                      left: 50,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0XFFFEEEDED),
                    ),
                    child: const Text(
                      "Ring",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontFamily: "Montaga",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              const Text(
                "Leave a Message",
                style: TextStyle(
                  fontFamily: "Montaga",
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                key: _notesFormKey,
                child: TextFormField(
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
                        color: Color(0XFFF969696),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  margin: const EdgeInsets.only(
                    right: 120,
                    left: 120,
                    bottom: 20,
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
}
