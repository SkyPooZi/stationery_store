import 'package:get/get.dart';

import '../Controller/chatting_controller.dart';

class ChattingBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ChattingController>(() => ChattingController());
  }
}