import 'package:flutter/material.dart';

class StaticDesktopContactScreen extends StatefulWidget {
  const StaticDesktopContactScreen({super.key});

  @override
  State<StaticDesktopContactScreen> createState() => _StaticDesktopContactScreenState();
}

class _StaticDesktopContactScreenState extends State<StaticDesktopContactScreen> {
  @override
  Widget build(BuildContext context) {
    print('Contact Screen');
    return Container(
      color: Colors.amber,
      height: MediaQuery.sizeOf(context).height*.3,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: const Center(
        child: Text('Contact'),
      ),
    );
  }
}
