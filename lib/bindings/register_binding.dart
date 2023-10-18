import 'package:get/get.dart';
import 'package:stationery_store/controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  void dependencies() {
    Get.put(RegisterController());
  }
}