import 'package:get/get.dart';
import 'package:stationery_store/bindings/chatting_binding.dart';
import 'package:stationery_store/bindings/detail_binding.dart';
import 'package:stationery_store/bindings/home_binding.dart';
import 'package:stationery_store/bindings/list_binding.dart';
import 'package:stationery_store/bindings/login_binding.dart';
import 'package:stationery_store/bindings/register_binding.dart';
import 'package:stationery_store/bindings/splash_screen_binding.dart';
import 'package:stationery_store/pages/cartPage.dart';
import 'package:stationery_store/pages/chatting_page.dart';
import 'package:stationery_store/pages/detailPage.dart';
import 'package:stationery_store/pages/list_page.dart';
import 'package:stationery_store/pages/login_page.dart';
import 'package:stationery_store/pages/register_page.dart';
import 'package:stationery_store/pages/splash_screen.dart';
import 'package:stationery_store/routes/route_name.dart';
import 'package:stationery_store/pages/home_page.dart';

import '../bindings/cart_binding.dart';


class AppPages {

  static const INITIAL = RouteName.detail;

  static final pages = [
    GetPage(
      name: RouteName.splash,
      page: () => SplashScreen(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: RouteName.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: RouteName.register,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: RouteName.list,
      page: () => ListPage(),
      binding: ListBinding(),
    ),
    GetPage(
      name: RouteName.cart,
      page: () => CartPage(),
      binding: CartBinding(),
    ),
    GetPage(
      name: RouteName.chatting,
      page: () => ChattingPage(),
      binding: ChattingBinding(),
    ),
    GetPage(
      name: RouteName.detail,
      page: () => DetailPage(),
      binding: DetailBinding(),
    ),
  ];
}