import 'package:ami/constants/component.dart';
import 'package:ami/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Components().socialMediaIconButton(FontAwesomeIcons.linkedin,
            'Linked In', Strings().kLinkedInUrl),
        Components().socialMediaIconButton(
            FontAwesomeIcons.githubSquare,
            'Github',
            Strings().kGithubUrl),
        Components().socialMediaIconButton(
            FontAwesomeIcons.instagramSquare,
            'Instagram',
            Strings().kInstagramUrl),
        Components().socialMediaIconButton(
            FontAwesomeIcons.facebookSquare,
            'Facebook',
            Strings().kFacebookUrl),
        Components().socialMediaIconButton(
            FontAwesomeIcons.twitterSquare,
            'Twitter',
            Strings().kTwitterUrl),
        Components().socialMediaIconButton(
            FontAwesomeIcons.stackOverflow,
            'Stack Overflow',
            Strings().kStackOverflowUrl),
      ],
    );
  }
}