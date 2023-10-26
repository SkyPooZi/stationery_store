import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_store/controllers/register_controller.dart';

import '../helper/themes.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({Key? key}) : super(key: key);

  Widget myForm(BuildContext context, IconData icon, String label, bool obscure, TextInputType inputType, TextEditingController? controller) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return TextField(
      controller: controller,
      obscureText: obscure,
      cursorColor: primaryTextColor,
      style: textField,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: label,
        labelStyle: TextStyle(
          color: primaryTextColor,
        ),
        prefixIcon: Icon(icon, color: primaryTextColor),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(screenWidth * screenHeight * 0.005),
          borderSide: BorderSide(
            color: primaryTextColor,
            width: screenWidth * 0.005,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(screenWidth * screenHeight * 0.005),
          borderSide: BorderSide(
            color: primaryTextColor,
            width: screenWidth * 0.005,
          ),
        ),
      ),
    );
  }

  Widget myPassword(BuildContext context, IconData icon, String label, bool obscure, TextInputType inputType, TextEditingController? controller, void Function() togglePasswordVisibility,) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return TextField(
      controller: controller,
      obscureText: obscure,
      cursorColor: primaryTextColor,
      style: textField,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: label,
        labelStyle: TextStyle(
          color: primaryTextColor,
        ),
        suffixIcon: IconButton(
          icon: Icon(obscure ? Icons.visibility_off : Icons.visibility, color: primaryTextColor),
          onPressed: togglePasswordVisibility,
        ),
        prefixIcon: Icon(icon, color: primaryTextColor),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(screenWidth * screenHeight * 0.005),
          borderSide: BorderSide(
            color: primaryTextColor,
            width: screenWidth * 0.005,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(screenWidth * screenHeight * 0.005),
          borderSide: BorderSide(
            color: primaryTextColor,
            width: screenWidth * 0.005,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(login_register),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.05, bottom: screenHeight * 0.05, left: screenWidth * 0.05, right: screenWidth * 0.05),
            child: Card(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Get.back();
                              },
                          ),
                        ],
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.050),
                          child: Positioned(
                            bottom: screenHeight * 0.10,
                            child: Image.asset(
                              icon,
                              height: screenHeight * 0.110,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.009),
                      child: Text(
                        "STATIONARY",
                        style: titleText,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: screenHeight * 0.016)),
                  Text(
                      "Create Your Account",
                      style: defaultText
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.05, right: screenWidth * 0.05, top: screenHeight * 0.023),
                      child: myForm(context, Icons.account_box, 'Name', false, TextInputType.name, controller.cName)
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.05, right: screenWidth * 0.05, top: screenHeight * 0.023),
                      child: myForm(context, Icons.account_circle, 'Username', false, TextInputType.text, controller.cUsername)
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.05, right: screenWidth * 0.05, top: screenHeight * 0.023),
                      child: myForm(context, Icons.email, 'Email', false, TextInputType.emailAddress, controller.cEmail)
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.05, right: screenWidth * 0.05, top: screenHeight * 0.023),
                    child: Obx(() {
                      return myPassword(
                        context,
                        Icons.lock,
                        'Password',
                        controller.passwordObscure.value,
                        TextInputType.visiblePassword,
                        controller.cPass,
                            () {
                          controller.togglePasswordVisibility();
                        },
                      );
                    }),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.016),
                    child: ElevatedButton(
                      onPressed: () {
                        controller.Register();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryTextColor,
                        minimumSize: Size(screenWidth * 0.77, screenHeight * 0.070),
                      ),
                      child: Text(
                        'Register',
                        style: TextStyle(color: primaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}