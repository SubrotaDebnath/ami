import 'package:ami/constants/component.dart';
import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  int profileIndex = 0;

  final ScrollController controller = ScrollController();

  void getIndex(index){
    setState(() {
      profileIndex = index;
      //print('Index: $index');
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: Components().kSmallAppBar(),
      drawer: Drawer(
        child: Components().buildListView(controller, getIndex, profileIndex),
      ),
      body: Container(
        child: Components().kLargeScreenBodyItem(width),
      ),
    );
  }
}
