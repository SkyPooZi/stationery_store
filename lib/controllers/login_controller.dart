import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

import '../routes/route_name.dart';

class LoginController extends GetxController {
  TextEditingController? cUsername;
  TextEditingController? cPass;
  RxBool passwordObscure = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    cUsername = new TextEditingController();
    cPass = new TextEditingController();
  }

  void togglePasswordVisibility() {
    passwordObscure.value = !passwordObscure.value;
  }

  void Login() async {
    final baseUrl = 'https://mediadwi.com/api/latihan/login';
    final response = await http.post(
        Uri.parse(baseUrl),
        body:{
          "username" :  cUsername?.text,
          "password" :  cPass?.text,
      },
    );

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> getData = jsonDecode(response.body);
        final status = getData["status"];

        if (status == true) {
          final token = getData["token"];
          final message = getData["message"];
          print("Token : $token");
          Get.snackbar(
            "Success",
            "$message",
            duration: Duration(seconds: 3),
          );
          Get.offNamed(RouteName.home);
        } else if (status == false) {
          final message = getData["message"];
          print("message : $message");
          Get.snackbar(
            "Failed",
            "$message",
            duration: Duration(seconds: 3),
          );
        }
      } catch (e) {
        print("Error parsing response: $e");
      }
    } else {
      print("HTTP request failed with status code: ${response.statusCode}");
    }
  }
}
