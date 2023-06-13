import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      height: 800,
      width: double.infinity,
      child: const Center(
        child: Text(
          'This is  the Blog Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
