import 'package:flutter/material.dart';

//COLOR
const Color primaryColor = Colors.white;
const Color primaryTextColor = Color(0xFF51321D);
const Color secondTextColor = Color(0xFFC19475);

//FONT STYLES INITIAL

TextStyle buttonStyle({required final color}) {
      return TextStyle(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: 12
      );
}

TextStyle defaultText = TextStyle(
    fontFamily: 'NotoSerifMedium'
);

TextStyle titleText = TextStyle(
      fontFamily: 'Lato',
      fontSize: 30,
      fontWeight: FontWeight.bold,
);

TextStyle textField = TextStyle(
    fontFamily: 'NotoSerifMedium',
    color: primaryTextColor
);

//IMAGE ASSETS
String icon = 'assets/icon.png';
String login_register = 'assets/login_register.png';