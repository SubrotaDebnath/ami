import 'package:ami/constants/component.dart';
import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Components().kSmallAppBar(),
    );
  }
}
