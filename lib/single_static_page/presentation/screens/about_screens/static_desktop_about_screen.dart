import 'package:flutter/material.dart';

class StaticDesktopAboutScreen extends StatefulWidget {
  const StaticDesktopAboutScreen({super.key});

  @override
  State<StaticDesktopAboutScreen> createState() => _StaticDesktopAboutScreenState();
}

class _StaticDesktopAboutScreenState extends State<StaticDesktopAboutScreen> {
  @override
  Widget build(BuildContext context) {
    print('About Screen');
    return Container(
      height: MediaQuery.sizeOf(context).height/2,
      color: Colors.green,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: const Center(
        child: Text('About'),
      ),);
  }
}
