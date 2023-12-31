import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../helper/themes.dart';
import '../../routes/route_name.dart';

class ProfileController extends GetxController {
  late final SharedPreferences prefs;
  RxString strUsername = "".obs;
  RxString strName = "".obs;
  RxString selectedImage = "".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('username')) {
      strUsername.value = prefs.getString('username') ?? "";
    }
    if (prefs.containsKey('name')) {
      strName.value = prefs.getString('name') ?? "";
    }
    if (prefs.containsKey('image')) {
      selectedImage.value = prefs.getString('image') ?? "";
    }
    print(selectedImage);
  }

  void logout() {
    prefs.clear();
    print(prefs);
    Get.offNamed(RouteName.login);
  }

}
