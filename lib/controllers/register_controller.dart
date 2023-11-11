import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import '../routes/route_name.dart';

class RegisterController extends GetxController {
  TextEditingController? cUsername;
  TextEditingController? cPass;
  TextEditingController? cName;
  TextEditingController? cEmail;
  var selectedImage = Rx<File?>(null);
  RxBool passwordObscure = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    cUsername = new TextEditingController();
    cPass = new TextEditingController();
    cName = new TextEditingController();
    cEmail = new TextEditingController();
  }

  void togglePasswordVisibility() {
    passwordObscure.value = !passwordObscure.value;
  }

  void pickImage() async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery, imageQuality: 50);

    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
    }
  }

  void Register() async {
    final baseUrl = 'https://mediadwi.com/api/latihan/register-user';
    final response = await http.post(
        Uri.parse(baseUrl),
        body:{
          "username" :  cUsername?.text,
          "password" :  cPass?.text,
          "full_name" :  cName?.text,
          "email" :  cEmail?.text,
        }
    );
    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> getData = jsonDecode(response.body);
        final status = getData["status"];

        if (status == true) {
          final message = getData["message"];
          print("Token : $message");
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