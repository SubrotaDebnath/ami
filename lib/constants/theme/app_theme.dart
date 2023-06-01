
import 'package:ami/business_logic/theme_bloc/theme_bloc.dart';
import 'package:ami/constants/enums.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ThemeState themeState;

  AppTheme({required this.themeState});

  ThemeData themeData() {
    return themeState.themeStatus==ThemeStatus.light||themeState.themeData.brightness==Brightness.light? ThemeData.light():ThemeData.dark();
    // return ThemeData(
    //   useMaterial3: true,
    //
    //   // navigationBarTheme: NavigationBarThemeData(height: 80,backgroundColor: Colors.red),
    //   // bottomAppBarTheme: BottomAppBarTheme(height:  80),
    //   colorSchemeSeed: Colors.white,
    //   // primaryColor:MaterialStateColor.resolveWith((states) =>  Colors.white),
    //   appBarTheme: const AppBarTheme(
    //     elevation: 0,
    //     scrolledUnderElevation: 0,
    //     backgroundColor: Colors.transparent,
    //     foregroundColor: Colors.transparent,
    //     surfaceTintColor: Colors.transparent,
    //     iconTheme: IconThemeData(
    //       color: Colors.black87,
    //     ),
    //
    //     /// Action bar Color/ theme for Android && IOS
    //     systemOverlayStyle: SystemUiOverlayStyle(
    //       statusBarColor: Colors.transparent, //Android Color
    //       statusBarIconBrightness: Brightness.dark, //Android
    //       statusBarBrightness: Brightness.light, //IOS
    //     ),
    //   ),
    //
    //   /// Button Theme
    //   // Text Button
    //   textButtonTheme: GlobalButtonTheme.lightThemeTextButtonTheme,
    //   // Elevated Button
    //   elevatedButtonTheme: GlobalButtonTheme.lightThemeElevatedButtonTheme,
    //
    //   /// Text Field
    //   // inputDecorationTheme:
    //
    //   /// Dialog theme
    //   dialogTheme: GlobalDialogTheme.lightThemeGlobalDialog,
    //
    //   /// Card Theme
    //   cardTheme: GlobalCardTheme.lightThemeCardTheme,
    //
    //   /// Snack bar theme
    //   snackBarTheme: const SnackBarThemeData(
    //     actionTextColor: Colors.white,
    //     showCloseIcon: true,
    //     closeIconColor: Colors.white,
    //   ),
    //
    //
    // );
  }
}
