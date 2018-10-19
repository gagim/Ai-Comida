import 'package:flutter/material.dart';

Widget themeEditText(Widget edit) {
  return Theme(
      data: ThemeData(
        hintColor: Colors.white,
        cursorColor: Colors.red,
        primaryColor: Colors.deepOrangeAccent,
      ),
      child: edit);
}
