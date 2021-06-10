import 'package:ami/constants/list.dart';
import 'package:ami/constants/strings.dart';
import 'package:ami/modules/blankColumn.dart';
import 'package:ami/modules/menu_option.dart';
import 'package:ami/screens/about.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'colours.dart';

class Components {
  BorderRadius topsBorderRadius() {
    return BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
  }

  void _launchURL(_url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  IconButton socialMediaIconButton(
      IconData _icon,
      String _tooltip,
      String _url,
      ) {
    return IconButton(
      icon: FaIcon(_icon),
      color: Colors.white,
      tooltip: _tooltip,
      hoverColor: Colors.blueGrey.shade900,
      splashRadius: 20.0,
      iconSize: 20.0,
      onPressed: () {
        _launchURL(_url);
      },
    );
  }

  ClipRRect appbarImage() {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(8.0),
      ),
      child: Image(
        image: NetworkImage(
          Strings().kImageLocation.toString(),
        ),
        width: 50,
        height: 50,
      ),
    );
  }

  AppBar kSmallAppBar() {
    return AppBar(
      title: Text('Subrota Debnath'),
      backgroundColor: Colors.blueGrey.shade900,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Components().appbarImage(),
        ),
      ],
    );
  }

  AppBar kLargeScreenAppBar() {
    return AppBar(
      title: Text(
        'Subrota Debnath | Android App Developer | subrota.shuvro@gmail.com',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colours().kAppBarLevelColor,
          fontSize: 20.0,
        ),
      ),
      backgroundColor: Colors.white,
      shadowColor: Colours().kShadowColor,
      elevation: 8.0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(
              top: 8.0, bottom: 8.0, left: 0.0, right: 25.0),
          child: Components().appbarImage(),
        ),
      ],
    );
  }


  ListView buildListView(controller, getIndex, profileIndex) {
    return ListView.builder(
      controller: controller,
      itemCount: AllListItem().kMenuItem.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 20.0, left: 20.0),
          child: GestureDetector(
            onTap: () {
              if(profileIndex != index){
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
        );
      },
    );
  }

  ListView kLargeScreenBodyItem(width) {
    return ListView.builder(
      itemCount: AllListItem().kPages.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            BlankColumn(width),
            Expanded(
              flex: 8,
              child: Card(
                color: Colors.transparent,
                elevation: 8.0,
                shadowColor: Colours().kShadowColor,
                child: Container(
                  color:Colors.white,
                  child: AllListItem().kPages[index],
                ),
              ),
            ),
            BlankColumn(width),
          ],
        );
      },
    );
  }

}
