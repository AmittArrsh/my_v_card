import 'package:flutter/material.dart';
import 'package:my_v_card/utilities/constants.dart';

class BGLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: 200,
            color: kColor1,
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: kColor2,
            ),
          ),
        ],
      ),
    );
  }
}
