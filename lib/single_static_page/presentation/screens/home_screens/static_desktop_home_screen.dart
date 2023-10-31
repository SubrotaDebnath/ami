import 'package:flutter/material.dart';

class StaticDesktopHomeScreen extends StatefulWidget {
  const StaticDesktopHomeScreen({super.key});

  @override
  State<StaticDesktopHomeScreen> createState() =>
      _StaticDesktopHomeScreenState();
}

class _StaticDesktopHomeScreenState extends State<StaticDesktopHomeScreen> {
  @override
  Widget build(BuildContext context) {
    print('Home Screen');
    return Container(
      height: MediaQuery.sizeOf(context).height,
      color: Colors.pink,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: const Center(
        child: Text('Home'),
      ),
    );
  }
}
