import 'package:flutter/material.dart';

const kSizedBoxWidth16 = SizedBox(
  width: 16,
);

const kSizedBoxHeight04 = SizedBox(
  height: 4,
);

const kColor1 = Color(0xFFd50000);
const kColor2 = Colors.black;
const kQRCardColor = Color(0xFFb71c1c);
const kTransitionIconColor = Color(0xFFFCC201);

//const kColor1 = Color(0xFFd50000);
//const kColor2 = Colors.green;
//const kQRCardColor = Colors.lightBlueAccent;
//const kTransitionIconColor = Colors.lightGreenAccent;

const kImageAvatar = CircleAvatar(
  radius: 50,
  backgroundColor: Colors.red,
  backgroundImage: AssetImage('images/profileImage.jpg'),
);

const kNameText = Text(
  'Amit Kumar',
  style: TextStyle(
    color: Colors.white,
    fontSize: 40,
    fontFamily: 'Oleo',
  ),
);

const kRoleText = Text(
  'FLUTTER DEVELOPER',
  style: TextStyle(
    color: Colors.white,
    fontSize: 16,
    letterSpacing: 4,
    fontWeight: FontWeight.bold,
  ),
);

const kIconColor = Colors.white;

const kLabelStyle = TextStyle(color: Colors.white, fontSize: 16);

const kPhone = Text(
  '+91 8217-728-024',
  style: kLabelStyle,
);

const kEmail = Text(
  'amitt2015@outlook.com',
  style: kLabelStyle,
);

const kGithub = Text(
  'https://github.com/AmittArrsh',
  style: kLabelStyle,
);
