import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController? cUsername;
  TextEditingController? cPass;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    cUsername = new TextEditingController();
    cPass = new TextEditingController();
  }

  Login() async {
    final baseUrl = 'https://mediadwi.com/api/latihan/login';
    isLoading.value = true;
    final response = await http.post(
        Uri.parse(baseUrl),
        body:{
          "username" :  cUsername!.text,
          "password" :  cPass!.text,
      }
    );
    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> getToken = jsonDecode(response.body);
        final token = getToken["token"];
        print("Token : $token");
        Get.snackbar(
          "Success",
          "Login Success",
          duration: Duration(seconds: 2),
        );
        isLoading.value = false;
      } else {
        Get.snackbar(
          "Sorry",
          "Failed Login",
          duration: Duration(seconds: 2),
        );
      }
    } catch (e) {
      print(e);
    }
  }
}
