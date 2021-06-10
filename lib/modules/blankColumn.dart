import 'package:flutter/material.dart';

class BlankColumn extends StatelessWidget {
  final double width;

  BlankColumn(this.width);

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