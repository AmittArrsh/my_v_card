import 'package:flutter/material.dart';
import 'package:my_v_card/utilities/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              Icons.phone,
              color: kIconColor,
            ),
            kSizedBoxWidth16,
            kPhone,
          ],
        ),
        kSizedBoxHeight04,
        Row(
          children: <Widget>[
            Icon(
              Icons.email,
              color: kIconColor,
            ),
            kSizedBoxWidth16,
            Expanded(child: kEmail),
          ],
        ),
        kSizedBoxHeight04,
        Row(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.github,
              color: kIconColor,
            ),
            kSizedBoxWidth16,
            Expanded(child: kGithub),
          ],
        )
      ],
    );
  }
}
