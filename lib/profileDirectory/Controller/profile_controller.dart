import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../helper/themes.dart';
import '../../routes/route_name.dart';

class ProfileController extends GetxController {
  late final SharedPreferences prefs;
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
    strName.value = prefs.getString('username')!;
    selectedImage.value = prefs.getString('image')!;
    print(selectedImage);
  }

  void logout() {
    prefs.clear();
    Get.offNamed(RouteName.login);
  }

}
