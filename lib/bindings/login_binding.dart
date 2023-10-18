import 'package:get/get.dart';
import 'package:stationery_store/controllers/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    // Get.put(LoginController());
  }
}