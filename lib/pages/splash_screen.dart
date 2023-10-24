import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_store/routes/route_name.dart';

import '../helper/themes.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(RouteName.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon, width: screenWidth * 1, height: screenHeight * 1),
          ],
        ),
      ),
    );
  }
}
