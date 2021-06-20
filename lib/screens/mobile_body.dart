
import 'package:ami/constants/colours.dart';
import 'package:ami/constants/list.dart';
import 'package:flutter/material.dart';
import 'mobile_about.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView.builder(
        itemCount: AllListItem().kMobilePages.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.transparent,
            elevation: 8.0,
            shadowColor: Colours().kShadowColor,
            child: Container(
              color:Colors.white,
              child: AllListItem().kMobilePages[index],
            ),
          );
        },
      )

      // child: SingleChildScrollView(
      //   child: MobileAbout(),
      // ),
    );
  }
}


