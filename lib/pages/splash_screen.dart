import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:stationery_store/pages/login_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Add a delay to display the splash screen for a specific duration.
    Future.delayed(Duration(seconds: 3), () {
      // Replace the next line with the navigation to your main screen.
      Get.offNamed("/register");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
