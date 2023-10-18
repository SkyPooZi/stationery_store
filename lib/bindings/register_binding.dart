import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  void dependencies() {
    Get.lazyPut(() => RegisterController());
  }
}