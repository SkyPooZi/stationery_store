import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

class RegisterController extends GetxController {
  TextEditingController? cUsername;
  TextEditingController? cPass;
  TextEditingController? cName;
  TextEditingController? cEmail;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    cUsername = new TextEditingController();
    cPass = new TextEditingController();
    cName = new TextEditingController();
    cEmail = new TextEditingController();
  }

  Register() async {
    final baseUrl = 'https://mediadwi.com/api/latihan/register-user';
    isLoading.value = true;
    final response = await http.post(
        Uri.parse(baseUrl),
        body:{
          "username" :  cUsername!.text,
          "password" :  cPass!.text,
          "full_name" :  cName!.text,
          "email" :  cEmail!.text,
        }
    );
    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> getToken = jsonDecode(response.body);
        final token = getToken["token"];
        print("Token : $token");
        Get.snackbar(
          "Success",
          "Register Success",
          duration: Duration(seconds: 2),
        );
        isLoading.value = false;
      } else {
        Get.snackbar(
          "Sorry",
          "Failed Register",
          duration: Duration(seconds: 2),
        );
      }
    } catch (e) {
      print(e);
    }
  }
}