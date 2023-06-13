import 'package:flutter/material.dart';

final lightThemeTextButtonTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.blue,
    textStyle: MaterialStateTextStyle.resolveWith(
      (states) => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w300,
      ),
    ),
  ),
);

final lightThemeElevatedButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
    padding: MaterialStateProperty.all<EdgeInsets>(
      const EdgeInsets.all(8),
    ),
    shape: MaterialStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    // backgroundColor: MaterialStateProperty.all<Color>(Colours.kLoginButtonColor),
    backgroundColor: MaterialStateProperty.resolveWith<Color>(
      (states) {
        if (states.contains(MaterialState.pressed)) {
          return Colors.blue;
        } else if (states.contains(MaterialState.disabled)) {
          return Colors.grey.shade400;
        }
        return Colors.blue;
      },
    ),
    foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
      if (states.contains(MaterialState.pressed)) {
        return Colors.white;
      } else if (states.contains(MaterialState.disabled)) {
        return Colors.white;
      }
      return Colors.white;
    }),
    // MaterialStateProperty.all<Color>(Colors.white)
  ),
);
