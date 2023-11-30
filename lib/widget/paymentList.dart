import 'package:flutter/material.dart';

import '../helper/themes.dart';
import 'checkbox.dart';

Widget paymentList (image, String title){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Image.asset(image, width: 50,),

      SizedBox(width: 12,),

      Text(title, style: TextStyle(
        color: primaryTextColor,
        fontSize: 14,
        fontFamily: 'Lato',
      ),),

      checkboxPayment()
    ],
  );
}