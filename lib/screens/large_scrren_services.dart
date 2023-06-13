import 'package:flutter/material.dart';

import '../constants/component.dart';
import '../constants/strings.dart';
import '../modules/service_Card.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1415,
      //color: Colors.pink,
      padding: const EdgeInsets.all(16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Components().blockTitleText(Strings().kServicesTitleText),
          Components().blockDodyText(Strings().kServicesBodyText),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ServiceCard(
                    icon: Icons.phone_android_outlined,
                    title: Strings().kServiceCardTitle_1,
                    description:Strings().kServiceCardBody_1,
                    color:Colors.white,
                    iconColor:Colors.green,
                    textColor:Colors.black,),
              ),
              Expanded(
                child: ServiceCard(
                    icon:Icons.auto_fix_high_rounded,
                    title:Strings().kServiceCardTitle_2,
                    description:Strings().kServiceCardBody_2,
                    color:Colors.white,
                    iconColor:Colors.redAccent,
                    textColor:Colors.black,),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ServiceCard(
                    icon:Icons.dashboard_customize_rounded,
                    title:Strings().kServiceCardTitle_3,
                    description:Strings().kServiceCardBody_3,
                    color: Colors.white,
                    iconColor:Colors.indigo,
                    textColor: Colors.black,),
              ),
              Expanded(
                child: ServiceCard(
                    icon:Icons.looks_rounded,
                    title:Strings().kServiceCardTitle_4,
                    description: Strings().kServiceCardBody_4,
                    color: Colors.white,
                    iconColor:Colors.amberAccent,
                    textColor: Colors.black,),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ServiceCard(
                    icon:Icons.design_services_rounded,
                    title:Strings().kServiceCardTitle_5,
                    description:Strings().kServiceCardBody_5,
                    color: Colors.white,
                    iconColor:Colors.pink,
                    textColor: Colors.black,),
              ),
              Expanded(
                child: ServiceCard(
                    icon:Icons.code_rounded,
                    title:Strings().kServiceCardTitle_6,
                    description:Strings().kServiceCardBody_6,
                    color: Colors.white,
                    iconColor:Colors.blueGrey.shade700,
                    textColor: Colors.black,),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ServiceCard(
                    icon:Icons.support_rounded,
                    title:Strings().kServiceCardTitle_7,
                    description:Strings().kServiceCardBody_7,
                    iconColor:Colors.white,
                    color: Colors.green,
                    textColor: Colors.black,),
              ),
              Expanded(
                child: ServiceCard(
                    icon:Icons.branding_watermark_rounded,
                    title:Strings().kServiceCardTitle_8,
                    description:Strings().kServiceCardBody_8,
                    color: Colors.white,
                    iconColor:Colors.orangeAccent,
                    textColor: Colors.black,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
