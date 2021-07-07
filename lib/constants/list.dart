import 'package:ami/screens/about.dart';
import 'package:ami/screens/large_scrren_services.dart';
import 'package:ami/screens/mobile_about.dart';
import 'package:ami/screens/mobile_services.dart';

import 'package:flutter/material.dart';

class AllListItem {
  final List kMenuItem = [
    'About',
    //'Portfolio',
    'Services',
    //'Resume',
    //'Blog',
    //'Contact',
    //'Download CV'
  ];

  final List kMenuIcon = [
    Icons.person,
    Icons.engineering,
    Icons.precision_manufacturing,
    Icons.compare,
    Icons.article_outlined,
    Icons.contact_mail,
    Icons.file_download,
  ];

  final List kPages = [
    //Services(),
    About(),
    //Portfolio(),
    Services(),
    //Resume(),
    //Blog(),
    //Contact(),
    //About(),
  ];

  final List kMobilePages = [
    //MobileServices(),
    MobileAbout(),
    //Portfolio(),
    MobileServices(),
    //Resume(),
    //Blog(),
    //Contact(),
    //MobileAbout(),
  ];
}
