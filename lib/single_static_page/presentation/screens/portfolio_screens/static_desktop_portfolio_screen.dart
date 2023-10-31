import 'package:flutter/material.dart';

class StaticDesktopPortfolioScreen extends StatefulWidget {
  const StaticDesktopPortfolioScreen({super.key});

  @override
  State<StaticDesktopPortfolioScreen> createState() =>
      _StaticDesktopPortfolioScreenState();
}

class _StaticDesktopPortfolioScreenState
    extends State<StaticDesktopPortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    print('Profile Screen');
    return Container(
      height: MediaQuery.sizeOf(context).height*2,
      color: Colors.blueGrey,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: const Center(
        child: Text('Portfolio'),
      ),
    );
  }
}
