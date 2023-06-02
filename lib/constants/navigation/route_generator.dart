import 'package:ami/constants/navigation/routes.dart';
import 'package:flutter/material.dart';

import '../../screens/error_screens/navigation_error_screen.dart';
import '../../screens/home_screens/home_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case Routes.kHomeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());


      //Error pages
      default:
        return MaterialPageRoute(builder: (_) => const NavigationErrorScreen());
    }
  }
}