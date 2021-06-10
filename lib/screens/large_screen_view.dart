import 'package:ami/constants/component.dart';
import 'package:ami/constants/list.dart';
import 'package:ami/constants/strings.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Subrota Debnath | Android App Developer | subrota.shuvro@gmail.com',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colours().kAppBarLevelColor,
            fontSize: 20.0,
          ),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colours().kShadowColor,
        elevation: 8.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, left: 0.0, right: 25.0),
            child: Components().appbarImage(),
          ),
        ],
      ),
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
                child: ListView.builder(
                  controller: controller,
                  itemCount: AllListItem().kMenuItem.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 20.0, left: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            profileIndex = index;
                          });
                        },
                        child: MenuOption(
                          levelTitle: AllListItem().kMenuItem[index],
                          icon: AllListItem().kMenuIcon[index],
                          color: profileIndex == index
                              ? Colours().kActiveButtonColor
                              : Colours().kInactiveButtonColor,
                          elevation: profileIndex == index ? 8.0 : 0.0,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                itemCount: AllListItem().kPages.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      BlankColumn(widget.width),
                      Expanded(
                        flex: 8,
                        child: Card(
                          color: Colors.transparent,
                          elevation: 8.0,
                          shadowColor: Colours().kShadowColor,
                          child: Container(
                            color:Colors.white,
                            child: AllListItem().kPages[index],
                          ),
                        ),
                      ),
                      BlankColumn(widget.width),
                    ],
                  );
                },
              ),
            ),
          ),
          // Expanded(
          //   flex: 8,
          //   child: Container(
          //     padding: EdgeInsets.only(top: 16.0, right: 8.0, left: 8.0),
          //     //color: Colors.white,
          //     color: Colors.pink,
          //     child: Card(
          //       elevation: 8.0,
          //       shadowColor: Colours().kShadowColor,
          //       child: Container(
          //         height: double.infinity,
          //         //color: Colors.white,
          //         color: Colors.yellow,
          //
          //         child: ListView(
          //           children: [
          //             About(),
          //             About(),
          //             About(),
          //           ],
          //         ),
          //
          //         // child: ListView.builder(
          //         //   itemCount: Components().kPages.length,
          //         //   itemBuilder: (context, index) {
          //         //     return Components().kPages[index];
          //         //   },
          //         // ),
          //
          //
          //
          //         // child: Column(
          //         //   mainAxisAlignment: MainAxisAlignment.center,
          //         //   children: [
          //         //     About(),
          //         //     About(),
          //         //     //  Center(
          //         //     //   child: Text(
          //         //     //     'Width ${widget.width}',
          //         //     //     style: TextStyle(
          //         //     //       color: Colors.deepOrange,
          //         //     //       fontSize: 50.0,
          //         //     //     ),
          //         //     //   ),
          //         //     // ),
          //         //   ],
          //         // ),
          //       ),
          //     ),
          //   ),
          // ),
          // Expanded(
          //   flex: widget.width > 1200 ? 1 : 0,
          //   child: Container(
          //     color: Colors.white,
          //   ),
          // ),
        ],
      ),
    );
  }

}

class BlankColumn extends StatelessWidget {
  final double width;

  BlankColumn(this.width);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: width > 1200 ? 1 : 0,
      child: Container(
        color: Colors.white,
      ),
    );
  }
}
