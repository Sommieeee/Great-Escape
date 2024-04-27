import 'package:flutter/material.dart';
import 'package:great_escape/theme/colors.dart';
import 'package:great_escape/ui/add-activity.dart';
import 'package:great_escape/util/constants.dart';

class Activities extends StatefulWidget {
  static const String id = "activities";

  const Activities({super.key});

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
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
            top: 20,
            left: 16,
            right: 16,
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
                      width: 90,
                    ),
                    const Center(
                      child: Text(
                        'Activities',
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
                      'Painting',
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
                      'Gardening',
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
                      'Puzzle',
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
                      'Photo Albums',
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
                      'Games',
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
                      'Painting',
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
                      'Exercise',
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
                      'Meditation',
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
                    validator: (value) {
                      if (value!.isEmpty) return 'Enter complaint';
                      return null;
                    },
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
                        builder: (context) => const AddActivity()));
                  },
                  child: const Center(
                    child: Text(
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
        ),
      ),
    );
  }
}
