import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_store/pages/chattingPageWithFriend.dart';
import 'package:stationery_store/pages/chatting_page.dart';
import 'package:stationery_store/pages/home_page.dart';
import 'package:stationery_store/pages/listItemPage.dart';
import 'package:stationery_store/pages/listProductBestSeller.dart';
import 'package:stationery_store/pages/splash_screen.dart';
import 'package:stationery_store/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.pages,
      home: HomePage(),
    );
  }
}
