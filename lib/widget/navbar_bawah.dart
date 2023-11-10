import 'package:flutter/material.dart';

import '../helper/themes.dart';
import '../routes/route_name.dart';

class NavbarBawah extends StatelessWidget {
  const NavbarBawah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: primaryTextColor,
      padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Image.asset('assets/brownHomeIcon.png',width: screenWidth * 0.07, color: primaryColor),
            onPressed: () {
              RouteName.home;
            },
          ),
          IconButton(
            icon: Image.asset('assets/cartIcon.png',width: screenWidth * 0.07, color: primaryColor),
            onPressed: () {
// Navigate to the business screen or perform an action.
            },
          ),
          IconButton(
            icon: Image.asset('assets/chatIcon.png',width: screenWidth * 0.07, color: primaryColor),
            onPressed: () {
// Navigate to the school screen or perform an action.
            },
          ),
          IconButton(
            icon: Image.asset('assets/profile.png', width: screenWidth * 0.1),
            onPressed: () {
// Navigate to the school screen or perform an action.
            },
          ),
        ],
      ),
    );
  }
}