import 'package:flutter/material.dart';

import '../screens/about.dart';
import '../screens/large_scrren_services.dart';
import '../screens/mobile_about.dart';
import '../screens/mobile_services.dart';

class AllListItem {
  final List<String> kMenuItem = <String>[
    'About',
    //'Portfolio',
    'Services',
    //'Resume',
    //'Blog',
    //'Contact',
    //'Download CV'
  ];

  final List<IconData> kMenuIcon = <IconData>[
    Icons.person,
    Icons.engineering,
    Icons.precision_manufacturing,
    Icons.compare,
    Icons.article_outlined,
    Icons.contact_mail,
    Icons.file_download,
  ];

  final List<Widget> kPages = <Widget>[
    //Services(),
    const About(),
    //Portfolio(),
    const Services(),
    //Resume(),
    //Blog(),
    //Contact(),
    //About(),
  ];

  final List<Widget> kMobilePages = <Widget>[
    //MobileServices(),
    const MobileAbout(),
    //Portfolio(),
    const MobileServices(),
    //Resume(),
    //Blog(),
    //Contact(),
    //MobileAbout(),
  ];
}
