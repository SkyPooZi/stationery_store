import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}