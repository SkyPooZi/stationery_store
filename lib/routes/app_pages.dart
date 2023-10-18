import 'package:get/get.dart';
import 'package:stationery_store/bindings/login_binding.dart';
import 'package:stationery_store/bindings/register_binding.dart';
import 'package:stationery_store/pages/login_page.dart';
import 'package:stationery_store/pages/register_page.dart';
import 'package:stationery_store/routes/route_name.dart';
import 'package:stationery_store/pages/home_page.dart';


class AppPages {
  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
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
  ];
}