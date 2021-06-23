import 'package:ami/screens/about.dart';
import 'package:ami/screens/large_scrren_services.dart';
import 'package:ami/screens/mobile_about.dart';
import 'package:ami/screens/mobile_services.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AllListItem{
  final List kMenuItem = [
    'About',
    'Portfolio',
    'Services',
    'Resume',
    'Blog',
    'Contact',
    'Download CV'
  ];

  final List kMenuIcon = [
    //Icons.account_box_rounded,
    Icons.person,
    //Icons.find_in_page,
    Icons.engineering,
    //Icons.build,
    // Icons.construction,
    Icons.precision_manufacturing,
    Icons.compare,
    Icons.article_outlined,
    Icons.contact_mail,
    Icons.file_download,
  ];

  final List kPages = [
    //Services(),
    About(),
    About(),
    Services(),
    About(),
    About(),
    About(),
    About(),
  ];

  final List kMobilePages = [
    //MobileServices(),
    MobileAbout(),
    MobileAbout(),
    MobileServices(),
    MobileAbout(),
    MobileAbout(),
    MobileAbout(),
    MobileAbout(),
  ];
}