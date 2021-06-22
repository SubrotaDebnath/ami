import 'package:ami/constants/colours.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color color;
  final Color iconColor;
  final Color textColor;

  ServiceCard(
    this.icon,
    this.title,
    this.description,
    this.color,
    this.iconColor,
    this.textColor,
  );

  @override
  Widget build(BuildContext context) {
   // var width = MediaQuery.of(context).size.width;
    return  Card(
        elevation: 8,
        shadowColor: Colours().kShadowColor,
      //shadowColor: Colors.orangeAccent,
        color: color,
        child: Container(
          height: /*width<300?330: width<600 && width> 500? 230:*/ 290,
          color: Colors.transparent,
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Icon(
                icon,
                color: iconColor,
                size: 50,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontSize: 24,
                  fontStyle: FontStyle.normal,
                ),
                maxLines: 1,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                description,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      );
  }
}
