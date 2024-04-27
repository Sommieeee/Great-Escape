import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:great_escape/theme/colors.dart';
import 'package:great_escape/ui/event-created.dart';

import '../util/constants.dart';

class AddEvent extends StatefulWidget {
  static const String id = 'addEvent';
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _phone = TextEditingController();

  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "+ Add New Event",
                    style: TextStyle(
                      color: purple100,
                      decoration: TextDecoration.underline,
                      fontFamily: "Montaga",
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: const Icon(
                        Icons.arrow_back,
                      )),
                  const SizedBox(
                    width: 80,
                  ),
                  const Text(
                    'Add An Event',
                    style: TextStyle(
                      fontFamily: "Montaga",
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              _buildform(),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const EventCreated()));
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  margin: const EdgeInsets.only(
                    right: 18,
                    left: 18,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    color: purple100,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Center(
                    child: Text(
                      'Confirm',
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

  Widget _buildform() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Title',
            style: TextStyle(
              fontFamily: "Montaga",
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: TextFormField(
              controller: _phone,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              style: const TextStyle(fontSize: 17),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(11)
              ],
              // validator: (value) {},
              onChanged: (value) {
                setState(() {});
              },
              decoration: kFieldDecoration.copyWith(),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Repeat Options',
            style: TextStyle(
              fontFamily: "Montaga",
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: TextFormField(
              controller: _phone,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              style: const TextStyle(fontSize: 17),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(11)
              ],
              // validator: (value) {},
              onChanged: (value) {
                setState(() {});
              },
              decoration: kFieldDecoration.copyWith(),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Reminder Setting',
            style: TextStyle(
              fontFamily: "Montaga",
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: TextFormField(
              controller: _phone,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              style: const TextStyle(fontSize: 17),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(11)
              ],
              // validator: (value) {},
              onChanged: (value) {
                setState(() {});
              },
              decoration: kFieldDecoration.copyWith(),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Categories',
            style: TextStyle(
              fontFamily: "Montaga",
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: TextFormField(
              controller: _password,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              style: const TextStyle(fontSize: 17),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(11)
              ],
              // validator: (value) {},
              onChanged: (value) {
                setState(() {});
              },
              decoration: kFieldDecoration.copyWith(),
            ),
          ),
        ],
      ),
    );
  }
}
