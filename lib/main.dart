import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_store/pages/chatting_page.dart';
import 'package:stationery_store/routes/app_pages.dart';
import 'package:stationery_store/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.pages,
      home: chattingPage(),
    );
  }
}
