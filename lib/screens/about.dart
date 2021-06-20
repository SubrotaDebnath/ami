import 'package:ami/constants/colours.dart';
import 'package:ami/constants/component.dart';
import 'package:ami/constants/strings.dart';
import 'package:ami/modules/social_media.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // decoration: BoxDecoration(
      //   color: Colors.pink,
      //   borderRadius: Components().topsBorderRadius(),
      // ),
      //margin: EdgeInsets.only(top: 20.0),
      //height: size.height,
      height: 920,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                   // borderRadius: Components().topsBorderRadius(),
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
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  color: Colors.transparent,
                  child: Container(
                    width: size.width < 1150
                        ? 850
                        : MediaQuery.of(context).size.width / 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Components().copyrightText(),
                        ),
                        SizedBox(
                          //height: (MediaQuery.of(context).size.height / 3) / 2,
                          height: 150,
                        ),
                        Components().blockTitleText(Strings().kAboutTitleText),
                        SizedBox(
                          height: 8.0,
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
            elevation: 16.0,
            shadowColor: Colours().kShadowColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              side: BorderSide(
                width: .5,
                color: Colors.blueGrey.shade900,
              ),
            ),
            child: Container(
              //height: MediaQuery.of(context).size.height / 3,
              height: 310,
              width: size.width < 1150
                  ? 850
                  : MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(.5),
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Components().nameText(),
                            Components().positionText(),
                            SizedBox(
                              height: 20,
                            ),
                            Components().degreeText(),
                            Components().cityText(),
                            SizedBox(
                              height: 20,
                            ),
                            Components().emailText(),
                            Components().contactText(),
                          ],
                        ),
                        Align(
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
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
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
