import 'package:flutter/material.dart';

import '../constants/component.dart';
import 'mobile_body.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  MobileViewState createState() => MobileViewState();
}

class MobileViewState extends State<MobileView> {
  int profileIndex = 0;

  final ScrollController controller = ScrollController();

  void getIndex(int index) {
    setState(() {
      profileIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Components().kSmallAppBar(),
      drawer: Drawer(
        child: Components().buildListView(
          controller: controller,
          getIndex: getIndex,
          profileIndex: profileIndex,
        ),
      ),
      body: const MobileBody(),
    );
  }
}
