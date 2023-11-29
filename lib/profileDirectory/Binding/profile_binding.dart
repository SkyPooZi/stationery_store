import 'package:get/get.dart';

import '../../loginDirectory/Controller/login_controller.dart';
import '../Controller/profile_controller.dart';

class ProfileBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}