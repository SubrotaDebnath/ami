import 'package:flutter/material.dart';

import '../constants/component.dart';
import '../constants/strings.dart';
import '../modules/social_media.dart';

class MobileAbout extends StatelessWidget {
  const MobileAbout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
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
                  SizedBox(
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
                      const Padding(
                        padding: EdgeInsets.all(8),
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
          padding: const EdgeInsets.all(16),
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
