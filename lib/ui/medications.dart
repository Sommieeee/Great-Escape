import 'package:flutter/material.dart';
import 'package:great_escape/theme/colors.dart';
import 'package:great_escape/ui/add-medication.dart';
import 'package:great_escape/util/constants.dart';

class Medications extends StatefulWidget {
  static const String id = 'medications';
  const Medications({super.key});

  @override
  State<Medications> createState() => _MedicationsState();
}

class _MedicationsState extends State<Medications> {
  bool _first = false;
  bool _second = false;
  bool _third = false;
  bool _fourth = false;
  bool _fifth = false;
  bool _sixth = false;
  bool _seventh = false;
  bool _eighth = false;

  final _notesFormKey = GlobalKey<FormState>();
  final TextEditingController _notes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 20,
          ),
          child: SingleChildScrollView(
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
                        'Medications',
                        style: TextStyle(
                          fontFamily: "Montaga",
                          fontSize: 28,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Paracetamol',
                      style: TextStyle(
                        fontFamily: "Montaga",
                        fontSize: 18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (!mounted) return;
                        setState(() => _first = !_first);
                      },
                      child: Icon(
                        _first
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        color: purple100,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Donepezil',
                      style: TextStyle(
                        fontFamily: "Montaga",
                        fontSize: 18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (!mounted) return;
                        setState(() => _second = !_second);
                      },
                      child: Icon(
                        _second
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        color: purple100,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Rivastigmine',
                      style: TextStyle(
                        fontFamily: "Montaga",
                        fontSize: 18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (!mounted) return;
                        setState(() => _third = !_third);
                      },
                      child: Icon(
                        _third
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        color: purple100,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Galantamine',
                      style: TextStyle(
                        fontFamily: "Montaga",
                        fontSize: 18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (!mounted) return;
                        setState(() => _fourth = !_fourth);
                      },
                      child: Icon(
                        _fourth
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        color: purple100,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Ebixa',
                      style: TextStyle(
                        fontFamily: "Montaga",
                        fontSize: 18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (!mounted) return;
                        setState(() => _fifth = !_fifth);
                      },
                      child: Icon(
                        _fifth
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        color: purple100,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Memantine',
                      style: TextStyle(
                        fontFamily: "Montaga",
                        fontSize: 18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (!mounted) return;
                        setState(() => _sixth = !_sixth);
                      },
                      child: Icon(
                        _sixth
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        color: purple100,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Haloperidol',
                      style: TextStyle(
                        fontFamily: "Montaga",
                        fontSize: 18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (!mounted) return;
                        setState(() => _seventh = !_seventh);
                      },
                      child: Icon(
                        _seventh
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        color: purple100,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Valios',
                      style: TextStyle(
                        fontFamily: "Montaga",
                        fontSize: 18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (!mounted) return;
                        setState(() => _eighth = !_eighth);
                      },
                      child: Icon(
                        _eighth
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        color: purple100,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
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
                          color: Color(0XFF969696),
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
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AddMedication()));
                  },
                  child: const Center(
                    child: Text(
                      '+ Add New Prescriptions',
                      style: TextStyle(
                        color: purple100,
                        decoration: TextDecoration.underline,
                        fontFamily: "Montaga",
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
