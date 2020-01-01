import 'package:flutter/material.dart';
import 'package:my_v_card/utilities/constants.dart';
import 'package:my_v_card/utilities/contact_info.dart';

class CardPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(32, 72, 32, 64),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              width: double.infinity,
              color: kColor2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  kImageAvatar,
                  kSizedBoxHeight04,
                  kNameText,
                  kRoleText,
                  kSizedBoxHeight04,
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: kColor1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ContactInfo(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
