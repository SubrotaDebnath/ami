import 'package:ami/screens/about.dart';
import 'package:flutter/material.dart';

class AllListItem{
  final List kMenuItem = [
    'About',
    'Resume',
    'Portfolio',
    'Blog',
    'Contact',
  ];

  final List kMenuIcon = [
    Icons.account_box_rounded,
    Icons.find_in_page,
    Icons.event_seat_outlined,
    Icons.article_outlined,
    Icons.contact_mail,
  ];

  final List kPages = [
    About(),
    About(),
    About(),
    About(),
    About(),
  ];
}