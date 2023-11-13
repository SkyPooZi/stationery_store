import 'package:get/get.dart';

import '../controllers/chatting_controller.dart';
import '../controllers/detail_controller.dart';

class DetailBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<DetailController>(() => DetailController());
  }
}