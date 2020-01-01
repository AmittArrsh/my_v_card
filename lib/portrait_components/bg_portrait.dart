import 'package:flutter/material.dart';
import 'package:my_v_card/utilities/constants.dart';

class BGPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: kColor1,
            ),
          ),
          Expanded(
            child: Container(
              color: kColor2,
            ),
          ),
        ],
      ),
    );
  }
}
