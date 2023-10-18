import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_store/pages/home_page.dart';
import 'package:stationery_store/pages/login_page.dart';
import 'package:stationery_store/pages/splash_screen.dart';
import 'package:stationery_store/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      getPages: AppPages.pages,
      home: SplashPage(),
    );
  }
}
