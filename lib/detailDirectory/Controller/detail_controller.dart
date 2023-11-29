import 'package:get/get.dart';
import 'package:stationery_store/cartDirectory/Controller/cart_controller.dart';

import '../../routes/route_name.dart';

class DetailController extends GetxController {
  late RxBool isAddedToCart = false.obs;

  @override
  void onInit() {
    super.onInit();

  }

  Map<String, dynamic> cartProduct(Map<String, dynamic> productData) {
    return {
      'id': productData['id'],
      'image': productData['image'],
      'name': productData['name'],
      'price': productData['price'],
      'quantity': 1,
      'categories': productData['categories'],
      'stock': productData['stock'],
    };
  }

  void addToCart() {
    if (!isAddedToCart.value) {
      var product = Get.arguments as Map<String, dynamic>;
      print("ini $product");
      var productCart = cartProduct(product);
      print("ini $productCart");
      isAddedToCart.value = true;
      final cartController = Get.put(CartController());

      if (cartController.isProductInCart(productCart)) {
        Get.snackbar(
          'Error',
          'Product is already in the cart!',
        );
      } else {
        cartController.addToCart();
        Get.snackbar(
          'Success',
          'Product has been added to cart!',
        );
        Get.toNamed(RouteName.cart, arguments: productCart);
      }
    } else {
      isAddedToCart.value = false;
    }
  }
}
