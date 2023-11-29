import 'package:get/get.dart';

import '../Controller/list_controller.dart';


class ListBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ListController>(() => ListController());
  }
}