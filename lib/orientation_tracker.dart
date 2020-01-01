import 'package:flutter/material.dart';
import 'package:my_v_card/landscape_components/bg_landscape.dart';
import 'portrait_components/bg_portrait.dart';
import 'package:my_v_card/landscape_components/card_landscape.dart';
import 'portrait_components/card_potrait.dart';
import 'package:my_v_card/shared_components/qr_card.dart';
import 'package:my_v_card/shared_components/transition_button.dart';

class OrientationTracker extends StatefulWidget {
  @override
  _OrientationTrackerState createState() => _OrientationTrackerState();
}

int index = 0;

class _OrientationTrackerState extends State<OrientationTracker> {
  List<Widget> portraitDisplay = [
    CardPortrait(),
    QRCard(l: 32, t: 72, r: 32, b: 64),
  ];
  List<Widget> landscapeDisplay = [
    CardLandscape(),
    QRCard(l: 48, t: 32, r: 48, b: 32),
  ];

  void updateCard() {
    setState(() {
      index = ++index % 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? Stack(
                children: <Widget>[
                  BGPortrait(),
                  AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    child: portraitDisplay[index],
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(child: child, scale: animation);
                    },
                  ),
                  CardTransitionButton(
                    bottomMargin: 36,
                    showQR: updateCard,
                  ),
                ],
              )
            : Stack(
                children: <Widget>[
                  BGLandscape(),
                  AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(child: child, scale: animation);
                    },
                    child: landscapeDisplay[index],
                  ),
                  CardTransitionButton(
                    bottomMargin: 4,
                    showQR: updateCard,
                  ),
                ],
              );
      },
    );
  }
}
