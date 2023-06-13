import 'package:flutter/material.dart';

import '../constants/colours.dart';
import '../constants/list.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: AllListItem().kMobilePages.length,
      itemBuilder: (context, index) {
    return Card(
      color: Colors.transparent,
      elevation: 8,
      shadowColor: Colours().kShadowColor,
      child: ColoredBox(
        color: Colors.white,
        child: AllListItem().kMobilePages[index],
      ),
    );
      },
    );
  }
}
