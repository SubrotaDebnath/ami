import 'package:ami/business_logic/theme_bloc/theme_bloc.dart';
import 'package:ami/constants/enums.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ThemeState themeState;

  AppTheme({required this.themeState});

  ThemeData themeData() {
    return themeState.themeStatus == ThemeStatus.light ||
            themeState.themeData.brightness == Brightness.light
        ? _lightThemeData
        : _darkThemeData;
  }

  var _lightThemeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorSchemeSeed: Colors.green.shade900,
  );

  var _darkThemeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.blueGrey.shade900,
  );
}
