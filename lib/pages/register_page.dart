import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_store/controllers/register_controller.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Obx(() => controller.isLoading.value
          ? Center(child: CircularProgressIndicator(),)
          : Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            TextFormField(
              obscureText: false,
              controller: controller.cUsername,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Username",
                label: Text("Username"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              controller: controller.cPass,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Password",
                label: Text("Password"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              controller: controller.cName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Name",
                label: Text("Name"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              controller: controller.cEmail,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Email",
                label: Text("Email"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              controller.Register();
              Get.toNamed("/login");
            }, child: Text("Register")),
          ],
        ),
      ),),
    );
  }
}
