
import 'package:flutter/material.dart';

class BlankColumn extends StatelessWidget {

  const BlankColumn({required this.width, super.key});

  final double width;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: width > 1200 ? 1 : 0,
      child: Container(
        color: Colors.white,
      ),
    );
  }
}
