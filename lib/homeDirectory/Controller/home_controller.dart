import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/list_model.dart';

class HomeController extends GetxController {
  RxList<ProductResponseModel> productresponsemodel = <ProductResponseModel>[].obs;
  late final SharedPreferences prefs;
  TextEditingController? cTopUp;
  var isLoading = true.obs;
  RxInt currency = 0.obs;
  RxString strPass = "".obs;

  TextEditingController? cSearchProduct;
  RxInt selectedIndex = 0.obs;
  RxString selectedCategory = "".obs;

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
    // TODO: implement onInit
    initializePrefs();
    selectedCategory.value = categories[selectedIndex.value];
    fetchProduct();
    super.onInit();
  }

  void initializePrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  void onSearchProduct(String searchText) {
    cSearchProduct?.text.obs.value = searchText;
  }

  void onCategorySelected(int index) {
    selectedIndex.value = index;
    selectedCategory.value = categories[index];
  }

  void fetchProduct () async {
    try{
      final response = await http.get(
          Uri.parse('https://stationery-api.000webhostapp.com/api/stationery-api/')
      );
      if(response.statusCode == 200){
        productresponsemodel.value = productResponseModelFromJson(response.body);
        isLoading(false);
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e){
      print(e);
    }
  }

  void topUp(String amount) {
    try {
      int topUpAmount = int.parse(amount);
      currency += topUpAmount;
    } catch (e) {
      print('Error parsing amount: $e');
    }
  }

  String formatCurrency(int amount) {
    const suffixes = ["", "K", "JT", "M", "T"];

    int index = 0;
    double value = amount.toDouble();

    while ((value >= 1000) && (index < suffixes.length - 1)) {
      value /= 1000;
      index++;
    }

    return '${value.toStringAsFixed(1)}${suffixes[index]}';
  }

}
