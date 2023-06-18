import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../constants/component.dart';

class WebView extends StatefulWidget {
  const WebView({required this.width, super.key});

  final double width;

  @override
  WebViewState createState() => WebViewState();
}

class WebViewState extends State<WebView> {
  int profileIndex = 0;
  final ScrollController controller = ScrollController();

  void getIndex(int index) {
    setState(() {
      profileIndex = index;
      if (kDebugMode) {
        print('Index: $index');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Components().kLargeScreenAppBar(),
      body: Row(
        children: [
          ColoredBox(
            //padding: EdgeInsets.only(top: 16.0),
            color: Colors.white,
            child: Card(
              //elevation: 8.0,
              //shadowColor: Colors.pink,
              //shadowColor: Colours().kShadowColor,
              child: Container(
                padding: const EdgeInsets.only(top: 16, bottom: 32),
                width: 250,
                color: Colors.transparent,
                child: Components().buildListView(
                  controller: controller,
                  getIndex: getIndex,
                  profileIndex: profileIndex,
                ),
              ),
            ),
          ),
          Expanded(
            child: ColoredBox(
              color: Colors.white,
              child: Components().kLargeScreenBodyItem(widget.width),
            ),
          ),
        ],
      ),
    );
  }
}
