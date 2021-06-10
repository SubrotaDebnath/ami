import 'package:ami/constants/colours.dart';
import 'package:ami/constants/component.dart';
import 'package:ami/constants/strings.dart';
import 'package:ami/modules/social_media.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: Components().topsBorderRadius(),
      ),
      margin: EdgeInsets.only(top: 20.0),
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
                    borderRadius: Components().topsBorderRadius(),
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                        'images/cover2.jpg',
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
                          child: Text(
                            '© Copyright Subrota Debnath',
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.normal,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          //height: (MediaQuery.of(context).size.height / 3) / 2,
                          height: 150,
                        ),
                        Text(
                          'About Me',
                          style: GoogleFonts.dancingScript(
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 50.0,
                            color: Colours().kAppBarLevelColor,
                          ),
                        ),
                        // Text(
                        //   'About Me',
                        //   style: TextStyle(
                        //     fontSize: 30.0,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colours().kAppBarLevelColor,
                        //     letterSpacing:1.0,
                        //     fontStyle: GoogleFonts.openSansCondensed(),
                        //   ),
                        // ),
                        SizedBox(
                          height: 8.0,
                        ),

                        //handlee
                        //Open Sans Condensed
                        //Indie Flower
                        Text(
                          Strings().kAboutMe,
                          style: GoogleFonts.mandali(
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.normal,
                            fontSize: 18.0,
                            color: Colors.blueGrey.shade700,
                          ),
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.ltr,
                        ),
                        // Text(
                        //   Strings().kAboutMe,
                        //   style: TextStyle(
                        //     color: Colors.blueGrey.shade700,
                        //     fontWeight: FontWeight.normal,
                        //     fontSize: 18.0,
                        //   ),
                        //   textDirection: TextDirection.ltr,
                        //   textAlign: TextAlign.justify,
                        // ),
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
                            Text(
                              'Subrota Debnath',
                              style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'Android App Developer',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Degree: B.Sc. in ECE',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'City: Dhaka, Bangladesh.',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Email: subrota.shuvro@gmail.com',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Text(
                              'Contact: +8801854397708',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
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
                      //width: (MediaQuery.of(context).size.height / 3) * .7,
                      //height: MediaQuery.of(context).size.height / 3,
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
                            'images/sss.png',
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
