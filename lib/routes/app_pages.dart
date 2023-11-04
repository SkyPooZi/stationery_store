import 'package:get/get.dart';
import 'package:stationery_store/bindings/chatting_binding.dart';
import 'package:stationery_store/bindings/home_binding.dart';
import 'package:stationery_store/bindings/login_binding.dart';
import 'package:stationery_store/bindings/register_binding.dart';
import 'package:stationery_store/bindings/splash_screen_binding.dart';
import 'package:stationery_store/pages/chatting_page.dart';
import 'package:stationery_store/pages/login_page.dart';
import 'package:stationery_store/pages/register_page.dart';
import 'package:stationery_store/pages/splash_screen.dart';
import 'package:stationery_store/routes/route_name.dart';
import 'package:stationery_store/pages/home_page.dart';

class AppPages {

  static const INITIAL = RouteName.splash;

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
      name: RouteName.chatting,
      page: () => ChattingPage(),
      binding: ChattingBinding(),
    ),
  ];
}