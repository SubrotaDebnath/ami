import 'package:ami/constants/component.dart';
import 'package:ami/constants/list.dart';
import 'package:ami/modules/menu_option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ami/constants/colours.dart';
import 'package:flutter/rendering.dart';

class WebView extends StatefulWidget {
  final double width;

  WebView(this.width);

  @override
  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
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
      backgroundColor: Colors.white,
      appBar: Components().kLargeScreenAppBar(),
      body: Row(
        children: [
          Container(
            padding: EdgeInsets.only(top: 16.0),
            color: Colors.white,
            child: Card(
              //elevation: 8.0,
              //shadowColor: Colours().kShadowColor,
              child: Container(
                width: 250,
                color: Colors.transparent,
                child: Components().buildListView(controller,getIndex, profileIndex),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Components().kLargeScreenBodyItem(widget.width),
            ),
          ),
        ],
      ),
    );
  }

}

