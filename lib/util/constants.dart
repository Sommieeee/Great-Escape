import 'package:flutter/material.dart';

import '../theme/colors.dart';

const kFieldDecoration = InputDecoration(
  filled: true,
  fillColor: white,
  border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFFC4C4C4),
        width: 1,
      ),
      borderRadius: BorderRadius.all(Radius.circular(9))),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: grey100,
        width: 1,
      ),
      borderRadius: BorderRadius.all(Radius.circular(9))),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: grey100,
        width: 1.5,
      ),
      borderRadius: BorderRadius.all(Radius.circular(9))),
);

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);
