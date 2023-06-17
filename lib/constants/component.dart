import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../modules/blank_column.dart';
import '../modules/menu_option.dart';
import 'colours.dart';
import 'list.dart';
import 'strings.dart';

class Components {
  Future<void> _launchURL(Uri url) async => await canLaunchUrl(url)
      ? await launchUrl(url)
      : ArgumentError('Could not launch $url');

  IconButton socialMediaIconButton(
    IconData icon,
    String tooltip,
    String url,
  ) =>
      IconButton(
        icon: FaIcon(icon),
        color: Colors.white,
        tooltip: tooltip,
        hoverColor: Colors.blueGrey.shade900,
        splashRadius: 20,
        iconSize: 20,
        onPressed: () async {
          await _launchURL(Uri.parse(url));
        },
      );

  ClipRRect appbarImage() => ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        child: Image(
          image: NetworkImage(
            Strings().kImageLocation,
          ),
          width: 50,
          height: 50,
        ),
      );

  AppBar kSmallAppBar() => AppBar(
        title: Text(Strings().kName),
        backgroundColor: Colors.blueGrey.shade900,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: Components().appbarImage(),
          ),
        ],
      );

  AppBar kLargeScreenAppBar() => AppBar(
        title: Text(
          '${Strings().kName} | ${Strings().kPositionTitle} | ${Strings().kEmail}',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colours().kAppBarLevelColor,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colours().kShadowColor,
        elevation: 8,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 8,
              right: 25,
            ),
            child: Components().appbarImage(),
          ),
        ],
      );

  ListView buildListView(
    ScrollController controller,
    Function(int) getIndex,
    int profileIndex,
  ) =>
      ListView.builder(
        controller: controller,
        itemCount: AllListItem().kMenuItem.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: GestureDetector(
            onTap: () {
              if (profileIndex != index) {
                getIndex(index);
              }
            },
            child: MenuOption(
              levelTitle: AllListItem().kMenuItem[index],
              icon: AllListItem().kMenuIcon[index],
              color: profileIndex == index
                  ? Colours().kActiveButtonColor
                  : Colours().kInactiveButtonColor,
              elevation: profileIndex == index ? 8.0 : 0.0,
            ),
          ),
        ),
      );

  ListView kLargeScreenBodyItem(double width) => ListView.builder(
        itemCount: AllListItem().kPages.length,
        itemBuilder: (BuildContext context, int index) => Row(
          children: <Widget>[
            BlankColumn(
              width: width,
            ),
            Expanded(
              flex: 8,
              child: Card(
                color: Colors.transparent,
                elevation: 8,
                shadowColor: Colours().kShadowColor,
                child: ColoredBox(
                  color: Colors.white,
                  child: AllListItem().kPages[index],
                ),
              ),
            ),
            BlankColumn(width: width),
          ],
        ),
      );

  Text copyrightText() => const Text(
        '© Copyright Subrota Debnath',
        style: TextStyle(
          color: Colors.deepOrange,
          fontWeight: FontWeight.normal,
          fontSize: 20,
        ),
      );

  Text blockTitleText(String title) => Text(
        title,
        style: GoogleFonts.dancingScript(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 50,
          color: Colours().kAppBarLevelColor,
          textStyle: TextStyle(
            shadows: <Shadow>[
              Shadow(
                offset: const Offset(10, 10),
                blurRadius: 3,
                color: Colours().kAppBarLevelColor.withOpacity(.5),
                //color: Colors.blueGrey,
                //color: Color.fromARGB(255, 0, 0, 0),
              ),
            ],
          ),
        ),
      );

  Text blockDodyText(String bodyText) => Text(
        bodyText,
        style: GoogleFonts.handlee(
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          color: Colors.blueGrey.shade700,
        ),
        textAlign: TextAlign.justify,
        textDirection: TextDirection.ltr,
      );

  Text titleText(
    String title,
  ) =>
      Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.italic,
        ),
      );

  Text contactText() => Text(
        Strings().kContact,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.italic,
        ),
      );

  Text emailText() => Text(
        Strings().kEmail,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.italic,
        ),
      );

  Text cityText() => Text(
        Strings().kCity,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      );

  Text degreeText() => Text(
        Strings().kDegree,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      );

  Text positionText() => Text(
        Strings().kPositionTitle,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      );

  Text nameText() => Text(
        Strings().kName,
        style: const TextStyle(
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      );
}
