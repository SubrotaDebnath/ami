import 'package:flutter/material.dart';

import '../constants/colours.dart';

class MenuOption extends StatelessWidget {


  const MenuOption(
      {super.key, this.elevation = 8.0,
        this.levelTitle = 'Title',
        this.color = Colors.grey,
        this.icon = Icons.account_box_rounded,
      });

  final double elevation;
  final String levelTitle;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shadowColor: Colours().kShadowColor,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        side: BorderSide(
          width: 0.5,
          color: color,
        ),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: color,
              size: 20,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              levelTitle,
              style: TextStyle(
                color: color,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
