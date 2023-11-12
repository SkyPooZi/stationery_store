import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helper/themes.dart';

Widget myForm(BuildContext context, IconData icon, String label, bool obscure, TextInputType inputType, TextEditingController? controller) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  return TextField(
    controller: controller,
    obscureText: obscure,
    cursorColor: primaryTextColor,
    style: textField,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: label,
      labelStyle: TextStyle(
        color: primaryTextColor,
      ),
      prefixIcon: Icon(icon, color: primaryTextColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(screenWidth * screenHeight * 0.005),
        borderSide: BorderSide(
          color: primaryTextColor,
          width: screenWidth * 0.005,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(screenWidth * screenHeight * 0.005),
        borderSide: BorderSide(
          color: primaryTextColor,
          width: screenWidth * 0.005,
        ),
      ),
    ),
  );
}

Widget myPassword(BuildContext context, IconData icon, String label, bool obscure, TextInputType inputType, TextEditingController? controller, void Function() togglePasswordVisibility,) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  return TextField(
    controller: controller,
    obscureText: obscure,
    cursorColor: primaryTextColor,
    style: textField,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: label,
      labelStyle: TextStyle(
        color: primaryTextColor,
      ),
      suffixIcon: IconButton(
        icon: Icon(obscure ? Icons.visibility_off : Icons.visibility, color: primaryTextColor),
        onPressed: togglePasswordVisibility,
      ),
      prefixIcon: Icon(icon, color: primaryTextColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(screenWidth * screenHeight * 0.005),
        borderSide: BorderSide(
          color: primaryTextColor,
          width: screenWidth * 0.005,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(screenWidth * screenHeight * 0.005),
        borderSide: BorderSide(
          color: primaryTextColor,
          width: screenWidth * 0.005,
        ),
      ),
    ),
  );
}

Widget mySearchProduct(BuildContext context, IconData icon, String hint, TextEditingController? controller ,Function(String) onSearch) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  return TextField(
    textDirection: TextDirection.ltr,
    controller: controller,
    onChanged: onSearch,
    cursorColor: primaryTextColor,
    decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: primaryTextColor,
        ),
        hintText: hint,
        focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: primaryTextColor, width: 2.0)),
        enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: primaryTextColor, width: 2.0))),
    style: TextStyle(
      color: primaryTextColor,
      fontFamily: 'LatoBold',
    ),
  );
}

Widget mySearch(BuildContext context, IconData icon, String label, bool obscure, TextInputType inputType, TextEditingController? controller, void Function() togglePasswordVisibility,) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  return TextField(
    controller: controller,
    obscureText: obscure,
    keyboardType: TextInputType.name,
    cursorColor: primaryTextColor,
    style: textField,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: label,
      labelStyle: TextStyle(
        color: primaryTextColor,
      ),
      suffixIcon: IconButton(
        icon: Icon(obscure ? Icons.visibility_off : Icons.visibility, color: primaryTextColor),
        onPressed: togglePasswordVisibility,
      ),
      prefixIcon: Icon(icon, color: primaryTextColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(screenWidth * screenHeight * 0.005),
        borderSide: BorderSide(
          color: primaryTextColor,
          width: screenWidth * 0.005,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(screenWidth * screenHeight * 0.005),
        borderSide: BorderSide(
          color: primaryTextColor,
          width: screenWidth * 0.005,
        ),
      ),
    ),
  );
}