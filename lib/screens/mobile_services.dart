import 'package:ami/constants/component.dart';
import 'package:ami/constants/strings.dart';
import 'package:ami/modules/service_Card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileServices extends StatelessWidget {
  const MobileServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2740,
      //color: Colors.pink,
      padding: EdgeInsets.all(16.0),

      child: Column(
        children: [
          Components().blockTitleText(Strings().kServicesTitleText),
          Components().blockDodyText(Strings().kServicesBodyText),
          SizedBox(
            height: 20,
          ),
          ServiceCard(
              Icons.phone_android_rounded,
              Strings().kServiceCardTitle_1,
              Strings().kServiceCardBody_1,
              Colors.white,
              Colors.blueAccent,
              Colors.black),
          ServiceCard(
              Icons.auto_fix_high_rounded,
              Strings().kServiceCardTitle_2,
              Strings().kServiceCardBody_2,
              Colors.white,
              Colors.redAccent,
              Colors.black),
          ServiceCard(
              Icons.dashboard_customize_rounded,
              Strings().kServiceCardTitle_3,
              Strings().kServiceCardBody_3,
              Colors.white,
              Colors.indigo,
              Colors.black),
          ServiceCard(
              Icons.looks_rounded,
              Strings().kServiceCardTitle_4,
              Strings().kServiceCardBody_4,
              Colors.white,
              Colors.amberAccent,
              Colors.black),
          ServiceCard(
              Icons.design_services_rounded,
              Strings().kServiceCardTitle_5,
              Strings().kServiceCardBody_5,
              Colors.white,
              Colors.pink,
              Colors.black),
          ServiceCard(
              Icons.code_rounded,
              Strings().kServiceCardTitle_6,
              Strings().kServiceCardBody_6,
              Colors.white,
              Colors.blueGrey.shade700,
              Colors.black),
          ServiceCard(
              Icons.support_rounded,
              Strings().kServiceCardTitle_7,
              Strings().kServiceCardBody_7,
              Colors.white,
              Colors.green,
              Colors.black),
          ServiceCard(
              Icons.branding_watermark_rounded,
              Strings().kServiceCardTitle_8,
              Strings().kServiceCardBody_8,
              Colors.white,
              Colors.orangeAccent,
              Colors.black),
        ],
      ),
    );
  }
}
