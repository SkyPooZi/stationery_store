import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_store/controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);
  // LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
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
                hintText: "Masukkan Email",
                label: Text("Email"),
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
            ElevatedButton(onPressed: () {
              controller.Login();
              Get.toNamed("/home");
            }, child: Text("Login")),
          ],
        ),
      ),),
    );
  }
}
