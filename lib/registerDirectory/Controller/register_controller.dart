import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../routes/route_name.dart';

class RegisterController extends GetxController {
  late final SharedPreferences prefs;
  TextEditingController? cUsername;
  TextEditingController? cPass;
  TextEditingController? cName;
  TextEditingController? cEmail;
  var selectedImage = Rx<File?>(null);
  RxBool passwordObscure = true.obs;
  RxString image = "".obs;

  @override
  void onInit() {
    super.onInit();
    initializePrefs();
    cUsername = TextEditingController();
    cPass = TextEditingController();
    cName = TextEditingController();
    cEmail = TextEditingController();
  }

  void initializePrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  void togglePasswordVisibility() {
    passwordObscure.value = !passwordObscure.value;
  }

  void pickImage() async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery, imageQuality: 50);

    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);

      print('Path file terpilih: ${pickedFile.path}');

      image.value = pickedFile.path;

      print('Path terpilih: ${image}');

      await prefs.setString('image', image.value);
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
          await prefs.setString('username', cUsername?.text ?? '');
          await prefs.setString('password', cPass?.text ?? '');
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