import 'package:flutter/material.dart';
import 'package:my_v_card/utilities/constants.dart';

class QRCard extends StatelessWidget {
  final double l, t, r, b;

  QRCard({this.l, this.t, this.r, this.b});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(l, t, r, b),
      color: kQRCardColor,
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Image(
          image: AssetImage('images/profileQR.png'),
        ),
      ),
    );
  }
}
