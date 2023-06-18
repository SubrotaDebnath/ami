import 'package:flutter/material.dart';

import '../constants/colours.dart';
import '../constants/component.dart';
import '../constants/strings.dart';
import '../modules/social_media.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: 920,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                        Strings().kLargeScreenCover,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.transparent,
                  child: SizedBox(
                    width: size.width < 1150
                        ? 850
                        : MediaQuery.of(context).size.width / 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Components().copyrightText(),
                        ),
                        const SizedBox(
                          height: 150,
                        ),
                        Components().blockTitleText(Strings().kAboutTitleText),
                        const SizedBox(
                          height: 8,
                        ),
                        Components().blockDodyText(Strings().kAboutMeBodyText),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Card(
            color: Colors.transparent,
            elevation: 16,
            shadowColor: Colours().kShadowColor,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
              side: BorderSide(
                width: .5,
                color: Colors.blueGrey.shade900,
              ),
            ),
            child: Container(
              height: 310,
              width: size.width < 1150
                  ? 850
                  : MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(.5),
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Components().nameText(),
                            Components().positionText(),
                            const SizedBox(
                              height: 20,
                            ),
                            Components().degreeText(),
                            Components().cityText(),
                            const SizedBox(
                              height: 20,
                            ),
                            Components().emailText(),
                            Components().contactText(),
                          ],
                        ),
                        const Align(
                          alignment: Alignment.bottomCenter,
                          child: SocialMediaRow(),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 250,
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            Strings().kLargeScreenDP,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
