import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_store/pages/login_page.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(LoginPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icon.png', width: 100, height: 100),
          ],
        ),
      ),
    );
  }
}
