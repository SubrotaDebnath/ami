import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      height: 800,
      width: double.infinity,
      child: const Center(
        child: Text(
          'This is  the PortFolio Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
