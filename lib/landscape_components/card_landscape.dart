import 'package:flutter/material.dart';
import 'package:my_v_card/utilities/constants.dart';
import 'package:my_v_card/utilities/contact_info.dart';

class CardLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(48, 32, 48, 32),
          child: Row(
            children: <Widget>[
              Container(
                width: 151,
                color: kColor2,
              ),
              Container(
                width: 2,
                color: kTransitionIconColor,
              ),
              Expanded(
                child: Container(
                  color: kColor1,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            kNameText,
                            kRoleText,
                            SizedBox(
                              width: 150,
                              child: Divider(
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: ContactInfo(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 150, top: 64),
          child: CircleAvatar(
              radius: 52,
              backgroundColor: kTransitionIconColor,
              child: kImageAvatar),
        ),
      ],
    );
  }
}
