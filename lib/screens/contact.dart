import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 800,
      width: double.infinity,
      child: const Center(
        child: Text(
          'This is  the contact Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
