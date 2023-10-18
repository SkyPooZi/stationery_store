import 'package:get/get.dart';
import 'package:stationery_store/controllers/login_controller.dart';

class LoginBinding extends Bindings {
  void dependencies() {
    Get.put(LoginController());
  }
}