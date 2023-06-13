import 'package:flutter/material.dart';

import '../../business_logic/theme_bloc/theme_bloc.dart';
import '../enums.dart';

class AppTheme {

  AppTheme({required this.themeState});
  ThemeState themeState;


  ThemeData themeData() {
    return themeState.themeStatus == ThemeStatus.light ||
            themeState.themeData.brightness == Brightness.light
        ? _lightThemeData
        : _darkThemeData;
  }

  final _lightThemeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorSchemeSeed: Colors.green.shade900,
  );

  final _darkThemeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.blueGrey.shade900,
  );
}
