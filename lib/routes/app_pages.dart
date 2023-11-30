import 'package:get/get.dart';
import 'package:stationery_store/accountDirectory/Binding/account_binding.dart';
import 'package:stationery_store/accountDirectory/View/account_page.dart';
import 'package:stationery_store/chattingDirectory/Binding/chatting_binding.dart';
import 'package:stationery_store/detailDirectory/Binding/detail_binding.dart';
import 'package:stationery_store/homeDirectory/Binding/home_binding.dart';
import 'package:stationery_store/listDirectory/Binding/list_binding.dart';
import 'package:stationery_store/loginDirectory/Binding/login_binding.dart';
import 'package:stationery_store/paymentPage/Binding/payment_binding.dart';
import 'package:stationery_store/paymentPage/View/paymentPage.dart';
import 'package:stationery_store/privacyDirectory/View/privacyPage.dart';
import 'package:stationery_store/registerDirectory/Binding/register_binding.dart';
import 'package:stationery_store/splashDirectory/Binding/splash_screen_binding.dart';
import 'package:stationery_store/cartDirectory/View/cartPage.dart';
import 'package:stationery_store/chattingDirectory/View/chatting_page.dart';
import 'package:stationery_store/detailDirectory/View/detailPage.dart';
import 'package:stationery_store/listDirectory/View/list_page.dart';
import 'package:stationery_store/loginDirectory/View/login_page.dart';
import 'package:stationery_store/registerDirectory/View/register_page.dart';
import 'package:stationery_store/splashDirectory/View/splash_screen.dart';
import 'package:stationery_store/routes/route_name.dart';
import 'package:stationery_store/homeDirectory/View/home_page.dart';

import '../cartDirectory/Binding/cart_binding.dart';
import '../profileDirectory/Binding/profile_binding.dart';
import '../profileDirectory/View/profilePage.dart';


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
      name: RouteName.list,
      page: () => ListPage(),
      binding: ListBinding(),
    ),
    GetPage(
      name: RouteName.detail,
      page: () => DetailPage(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: RouteName.profile,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
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
      name: RouteName.payment,
      page: () => PaymentPage(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: RouteName.account,
      page: () => AccountPage(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: RouteName.privacy,
      page: () => PrivacyPage(),
    ),
  ];
}