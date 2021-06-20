import 'package:ami/constants/strings.dart';
import 'package:ami/screens/large_screen_view.dart';
import 'package:ami/screens/mobile_screen_view.dart';
import 'package:ami/screens/tablet_screen_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings().kName,
      home: ViewSelector(),
    ),
  );
}

class ViewSelector extends StatefulWidget {
  @override
  _ViewSelectorState createState() => _ViewSelectorState();
}

class _ViewSelectorState extends State<ViewSelector> {
  Size screenSize = Size(0, 0);

  @override
  Widget build(BuildContext context) {
    setState(() {
      screenSize = MediaQuery.of(context).size;
    });

    return  screenSize.width >= 992
        ? WebView(screenSize.width)
        : screenSize.width < 992 && screenSize.width > 600
        ?TabView()
        : MobileView();

  }
}
