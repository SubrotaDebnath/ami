
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../constants/colours.dart';

class ServiceCard extends StatelessWidget {

  const ServiceCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
    required this.iconColor,
    required this.textColor,
    super.key,}
  );

  final IconData icon;
  final String title;
  final String description;
  final Color color;
  final Color iconColor;
  final Color textColor;

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
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              Icon(
                icon,
                color: iconColor,
                size: 50,
              ),
              const SizedBox(
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
              const SizedBox(
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
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty<IconData>('icon', icon))
    ..add(StringProperty('title', title))
    ..add(StringProperty('description', description))
    ..add(ColorProperty('color', color))
    ..add(ColorProperty('iconColor', iconColor))
    ..add(ColorProperty('textColor', textColor));
  }
}
