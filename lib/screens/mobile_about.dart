import 'package:ami/constants/component.dart';
import 'package:ami/constants/strings.dart';
import 'package:ami/modules/social_media.dart';
import 'package:flutter/material.dart';

class MobileAbout extends StatelessWidget {
  const MobileAbout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 520,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 380,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(
                          Strings().kSmallScreenDP,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // color: Colors.pink,
                    height: 140,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Components().copyrightText(),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: Colors.blueGrey.withOpacity(.8),
                  height: 220,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Components().nameText(),
                      Components().positionText(),
                      Components().titleText(Strings().kCity),
                      Components().titleText(Strings().kEmail),
                      Components().titleText(Strings().kContact),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SocialMediaRow(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Components().blockTitleText(Strings().kAboutTitleText),
              Components().blockDodyText(Strings().kAboutMeBodyText),
            ],
          ),
        )
      ],
    );
  }
}