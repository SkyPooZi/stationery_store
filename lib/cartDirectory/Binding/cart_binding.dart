import 'package:get/get.dart';
import 'package:stationery_store/cartDirectory/Controller/cart_controller.dart';

import '../../homeDirectory/Controller/home_controller.dart';

class CartBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<CartController>(() => CartController());
  }
}