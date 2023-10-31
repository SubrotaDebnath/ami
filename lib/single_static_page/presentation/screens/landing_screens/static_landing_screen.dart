import 'package:flutter/material.dart';

import 'static_desktop_landing_screen.dart';
class StaticLandingScreen extends StatefulWidget {
  const StaticLandingScreen({super.key});

  @override
  State<StaticLandingScreen> createState() => _StaticLandingScreenState();
}

class _StaticLandingScreenState extends State<StaticLandingScreen> {
  @override
  Widget build(BuildContext context) {
    //Todo: Check Platform and return accordingly (mobile/tab/desktop)
    return const StaticWebLandingScreen();
  }
}
