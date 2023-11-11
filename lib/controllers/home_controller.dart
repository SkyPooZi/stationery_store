import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

import '../models/list_model.dart';
import '../routes/route_name.dart';

class HomeController extends GetxController {
  RxList<ProductResponseModel> productresponsemodel = <ProductResponseModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchProduct();
    super.onInit();
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

}
