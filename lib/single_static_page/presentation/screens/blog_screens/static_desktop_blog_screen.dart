import 'package:flutter/material.dart';

class StaticDesktopBlogScreen extends StatefulWidget {
  const StaticDesktopBlogScreen({super.key});

  @override
  State<StaticDesktopBlogScreen> createState() =>
      _StaticDesktopBlogScreenState();
}

class _StaticDesktopBlogScreenState extends State<StaticDesktopBlogScreen> {
  @override
  Widget build(BuildContext context) {
    print('Blog Screen');
    return Container(
      height: MediaQuery.sizeOf(context).height,
      color: Colors.red,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: const Center(
        child: Text('Blog'),
      ),
    );
  }
}
