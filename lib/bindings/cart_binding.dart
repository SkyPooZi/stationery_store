import 'package:get/get.dart';
import 'package:stationery_store/controllers/cart_controller.dart';

import '../controllers/home_controller.dart';

class CartBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<CartController>(() => CartController());
  }
}