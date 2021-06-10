import 'package:ami/constants/component.dart';
import 'package:flutter/material.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  int profileIndex = 0;

  final ScrollController controller = ScrollController();

  void getIndex(index){
    setState(() {
      profileIndex = index;
      print('Index: $index');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Components().kSmallAppBar(),
      drawer: Drawer(
        child: Components().buildListView(controller, getIndex, profileIndex),
      ),
    );
  }
}
