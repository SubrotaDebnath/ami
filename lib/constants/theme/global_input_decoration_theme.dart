import 'package:flutter/material.dart';

class GlobalInputDecorationTheme {
  static const lightThemeInputDecoration = InputDecorationTheme(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 2,
    ),
    hintStyle: TextStyle(color: Colors.grey),
    // filled: true,
    // fillColor: Colors.white,
    labelStyle: TextStyle(),
    // focusedBorder: OutlineInputBorder()
  );
}
