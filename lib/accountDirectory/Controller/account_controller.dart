import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountController extends GetxController {
  late final SharedPreferences prefs;
  RxString selectedImage = "".obs;
  RxString strUsername = "".obs;
  RxString strName = "".obs;
  RxString strEmail = "".obs;
  RxString strPass = "".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('image')) {
      selectedImage.value = prefs.getString('image') ?? "";
    }
    if (prefs.containsKey('username')) {
      strUsername.value = prefs.getString('username') ?? "";
    }
    if (prefs.containsKey('name')) {
      strName.value = prefs.getString('name') ?? "";
    }
    if (prefs.containsKey('email')) {
      strEmail.value = prefs.getString('email') ?? "";
    }
    if (prefs.containsKey('password')) {
      strPass.value = prefs.getString('password') ?? "";
    }
    print(selectedImage);
  }
}
