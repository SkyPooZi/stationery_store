import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../routes/route_name.dart';

class SplashScreenController extends GetxController {

  late final SharedPreferences prefs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async {
    print("Checking SharedPreferences...");
    prefs = await SharedPreferences.getInstance();
    Future.delayed(Duration(seconds: 3), () async {
      if (prefs.getString('token') == null) {
        print("Token is null. Navigating to login...");
        Get.offNamed(RouteName.login);
      } else {
        print("Token found. Navigating to home...");
        Get.offNamed(RouteName.home);
      }
    });
  }

}
