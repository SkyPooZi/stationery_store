import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../models/list_model.dart';
import '../../routes/route_name.dart';

class ListController extends GetxController {
  RxList<ProductResponseModel> productresponsemodel = <ProductResponseModel>[].obs;
  RxList<ProductResponseModel> filteredProducts = <ProductResponseModel>[].obs;
  RxInt selectedIndex = 0.obs;
  TextEditingController? cSearchProduct;
  RxBool isLoading = true.obs;
  RxString selectedCategory = "".obs;
  RxInt quantity = 1.obs;

  final List<String> categories = [
    'All',
    'Amplop',
    'Penjepit Kertas',
    'Buku',
    'Pemotong',
    'Kertas',
    'Isolasi',
    'Lem Perekat',
    'Map',
    'Alat Ukur',
    'Alat Tulis',
    'Penghapus',
    'Aksesoris Komputer',
    'Pendamping Fotocopy',
    'Sticky Noted',
    'Pendamping ATK',
  ];

  @override
  void onInit() {
    super.onInit();
    selectedCategory.value = categories[selectedIndex.value];
    cSearchProduct = TextEditingController();
    fetchProduct();
  }

  void filterProducts() {
    print("Filtering products...");
    print("Selected Category: ${selectedCategory.value}");

    if (cSearchProduct != null && cSearchProduct!.text.isNotEmpty) {
      filteredProducts.value = productresponsemodel
          .where((product) =>
          product.name.toLowerCase().contains(cSearchProduct!.text.toLowerCase()))
          .toList();
    } else {
      if (selectedCategory.value == 'All') {
        filteredProducts.assignAll(productresponsemodel);
      } else {
        filteredProducts.value = productresponsemodel
            .where((product) => product.categories == selectedCategory.value)
            .toList();
      }
    }
    print("Filtered Products: $filteredProducts");
  }

  void onSearchProduct(String searchText) {
    cSearchProduct?.text.obs.value = searchText;
    filterProducts();
  }

  void onCategorySelected(int index) {
    selectedIndex.value = index;
    selectedCategory.value = categories[index];
    filterProducts();
  }

  Map<String, dynamic> detailProduct(int index, ProductResponseModel product) {
    return {
      'id': product.id,
      'index': index,
      'image': product.image,
      'name': product.name,
      'rating': product.rating,
      'description': product.description,
      'stock': product.stock,
      'price': product.price,
      'categories': product.categories,
    };
  }

  void goToDetailPage(int index) {
    if (filteredProducts.isNotEmpty && index < filteredProducts.length) {
      var product = filteredProducts[index];
      var productDetail = detailProduct(index, product);

      Get.toNamed(RouteName.detail, arguments: productDetail);
    } else {
      print("Invalid index or filtered products list is empty.");
    }
  }

  void fetchProduct() async {
    try {
      final response = await http.get(
        Uri.parse('https://stationery-api.000webhostapp.com/api/stationery-api/'),
      );
      if (response.statusCode == 200) {
        productresponsemodel.value = productResponseModelFromJson(response.body);
        filterProducts();
        isLoading.value = false;
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print(e);
    }
  }
}