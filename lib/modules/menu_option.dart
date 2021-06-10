import 'package:ami/constants/colours.dart';
import 'package:flutter/material.dart';

class MenuOption extends StatelessWidget {
  final double elevation;
  final String levelTitle;
  final Color color;
  final IconData icon;

  MenuOption(
      {this.elevation = 8.0,
        this.levelTitle = 'Title',
        this.color = Colors.grey,
        this.icon = Icons.account_box_rounded});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shadowColor: Colours().kShadowColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        side: BorderSide(
          width: 0.5,
          color: color,
        ),
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: color,
              size: 20.0,
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              levelTitle,
              style: TextStyle(
                color: color,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}