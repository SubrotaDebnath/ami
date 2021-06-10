import 'package:ami/constants/strings.dart';
import 'package:ami/screens/about.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
      leading: Icon(
        Icons.article,
      ),
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

}
