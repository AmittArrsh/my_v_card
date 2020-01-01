import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_v_card/utilities/constants.dart';

class CardTransitionButton extends StatelessWidget {
  final double bottomMargin;
  final Function showQR;

  CardTransitionButton({@required this.bottomMargin, @required this.showQR});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: showQR,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: bottomMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Center(
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        color: kColor2,
                        height: 28,
                        width: 56,
                      ),
                      Container(
                        color: kColor1,
                        height: 28,
                        width: 56,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Icon(FontAwesomeIcons.qrcode,
                        color: kTransitionIconColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
