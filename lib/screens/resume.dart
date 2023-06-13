import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) => Container(
      color: Colors.indigo,
      height: 800,
      width: double.infinity,
      child: const Center(
        child: Text(
          'This is  a Resume Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
    );
}
