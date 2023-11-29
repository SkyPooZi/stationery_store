import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/splash_screen_controller.dart';
import '../../helper/themes.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  SplashScreenController controller = Get.find<SplashScreenController>();

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
