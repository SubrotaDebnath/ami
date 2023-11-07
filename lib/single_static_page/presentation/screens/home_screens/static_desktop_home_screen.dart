import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


 const kIntroText =  "Hi! I'm Subrota, an enthusiastic developer specializing "
     "in Android and Flutter. With years of experience, I've dedicated myself "
     "to creating top-notch mobile applications.I'm always looking for new "
     'challenges and opportunities to grow, both personally and professionally.'
     " I'm excited to collaborate with talented people and bring their ideas"
     ' to life.';

class StaticDesktopHomeScreen extends StatefulWidget {
  const StaticDesktopHomeScreen({super.key});

  @override
  State<StaticDesktopHomeScreen> createState() =>
      _StaticDesktopHomeScreenState();
}

class _StaticDesktopHomeScreenState extends State<StaticDesktopHomeScreen> {
  @override
  Widget build(BuildContext context) {

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 500,
        minWidth: 300,
        // maxHeight: 1200,
        // maxWidth: MediaQuery.sizeOf(context).width-300,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 700,
            child: AutoSizeText(
              kIntroText,
            minFontSize: 18,
            maxFontSize: 24,
              textAlign: TextAlign.justify,
            ),
          ),

      ],),
    );
  }
}
