import 'package:get/get.dart';

class CartController extends GetxController {
  RxList<Map<String, dynamic>> cartItems = <Map<String, dynamic>>[].obs;
  RxList<Map<String, dynamic>> filteredProducts = <Map<String, dynamic>>[].obs;
  RxInt price = 0.obs;
  RxInt id = 1.obs;
  RxInt selectedIndex = 0.obs;
  RxString selectedCategory = "".obs;

  bool isProductInCart(Map<String, dynamic> product) {
    return cartItems.any((item) => item['id'] == product['id']);
  }

  final List<String> categories = [
    'Your Cart',
    'On Going',
    'Completed',
  ];

  @override
  void onInit() {
    super.onInit();
    selectedCategory.value = categories[selectedIndex.value];
    filterProducts();
  }

  void filterProducts() {
    if (selectedCategory.value == 'Your Cart') {
      filteredProducts.assignAll(cartItems.where((item) => item['status'] == selectedCategory.value).toList());
    } else if (selectedCategory.value == 'On Going') {
      filteredProducts.assignAll(cartItems.where((item) => item['status'] == selectedCategory.value));
    } else if (selectedCategory.value == 'Completed') {
      filteredProducts.assignAll(cartItems.where((item) => item['status'] == selectedCategory.value).toList());
    }
    update();
  }

  void onCategorySelected(int index) {
    selectedIndex.value = index;
    selectedCategory.value = categories[index];
    filterProducts();
  }

  void increaseQuantity(Map<String, dynamic> productData) {
    final productId = productData['id'];
    final int index = cartItems.indexWhere((item) => item['id'] == productId);

    if (index != -1) {
      final int currentQuantity = cartItems[index]['quantity'] ?? 0;
      final int maxStock = cartItems[index]['stock'] ?? 0;

      if (currentQuantity < maxStock) {
        cartItems[index]['quantity'] = currentQuantity + 1;
        cartItems.refresh();
        updatePrice(cartItems[index]);
      }
    }
  }

  void decreaseQuantity(Map<String, dynamic> productData) {
    final productId = productData['id'];
    final int index = cartItems.indexWhere((item) => item['id'] == productId);

    if (index != -1) {
      final int currentQuantity = cartItems[index]['quantity'] ?? 0;

      if (currentQuantity > 1) {
        cartItems[index]['quantity'] = currentQuantity - 1;
        updatePrice(cartItems[index]);
      } else {
        cartItems.removeAt(index);
        filteredProducts.removeWhere((item) => item['id'] == productId);
        updatePrice(cartItems[index]);
      }
      cartItems.refresh();
      filterProducts();
    }
  }


  void removeItemFromCart(int index) {
    cartItems.removeAt(index);
    cartItems.refresh();
  }

  void updatePrice(Map<String, dynamic> productData) {
    final int productId = productData['id'];
    final int productIndex = cartItems.indexWhere((item) => item['id'] == productId);

    if (productIndex != -1) {
      final int productPrice = cartItems[productIndex]['price'];
      final int currentQuantity = cartItems[productIndex]['quantity'] ?? 1;

      final totalPrice = productPrice * currentQuantity;

      price.value = totalPrice;

      update();
      filterProducts();
    }
  }

  String calculateTotalPrice() {
    int totalPrice = 0;
    for (final productData in cartItems) {
      final int quantity = productData['quantity'] ?? 1;
      final int price = productData['price'] ?? 0;
      totalPrice += quantity * price;
    }
    return totalPrice.toString();
  }

  void addToCart() {
    final Map<String, dynamic> productData = Get.arguments as Map<String, dynamic>;
    productData['status'] = 'Your Cart';
    cartItems.add(productData);
    filterProducts();
    update();
  }
}
