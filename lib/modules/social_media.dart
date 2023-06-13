import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/component.dart';
import '../constants/strings.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Components().socialMediaIconButton(FontAwesomeIcons.linkedin,
            'Linked In', Strings().kLinkedInUrl,),
        Components().socialMediaIconButton(
            FontAwesomeIcons.squareGithub,
            'Github',
            Strings().kGithubUrl,),
        Components().socialMediaIconButton(
            FontAwesomeIcons.squareInstagram,
            'Instagram',
            Strings().kInstagramUrl,),
        Components().socialMediaIconButton(
            FontAwesomeIcons.squareFacebook,
            'Facebook',
            Strings().kFacebookUrl,),
        Components().socialMediaIconButton(
            FontAwesomeIcons.squareTwitter,
            'Twitter',
            Strings().kTwitterUrl,),
        Components().socialMediaIconButton(
            FontAwesomeIcons.stackOverflow,
            'Stack Overflow',
            Strings().kStackOverflowUrl,),
      ],
    );
  }
}
