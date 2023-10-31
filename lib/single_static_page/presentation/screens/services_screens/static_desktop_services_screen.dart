import 'package:flutter/material.dart';

class StaticDesktopServicesScreen extends StatefulWidget {
  const StaticDesktopServicesScreen({super.key});

  @override
  State<StaticDesktopServicesScreen> createState() =>
      _StaticDesktopServicesScreenState();
}

class _StaticDesktopServicesScreenState
    extends State<StaticDesktopServicesScreen> {
  @override
  Widget build(BuildContext context) {
    print('Services Screen');
    return Container(
      height: MediaQuery.sizeOf(context).height*1.5,
      color: Colors.blue,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: const Center(
        child: Text('Services'),
      ),
    );
  }
}
