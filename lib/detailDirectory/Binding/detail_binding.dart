import 'package:get/get.dart';

import '../../chattingDirectory/Controller/chatting_controller.dart';
import '../Controller/detail_controller.dart';

class DetailBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<DetailController>(() => DetailController());
  }
}