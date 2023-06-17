import 'package:flutter/material.dart';

import '../constants/component.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  TabViewState createState() => TabViewState();
}

class TabViewState extends State<TabView> {
  int _profileIndex = 0;

  final ScrollController _controller = ScrollController();

  void _getIndex(int index) {
    setState(() {
      _profileIndex = index;
      //print('Index: $index');
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: Components().kSmallAppBar(),
      drawer: Drawer(
        child: Components().buildListView(
          _controller,
          _getIndex,
          _profileIndex,
        ),
      ),
      body: Container(
        child: Components().kLargeScreenBodyItem(width),
      ),
    );
  }
}
