import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import '../helper/themes.dart';
import '../routes/route_name.dart';
import '../widget/text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  LoginController controller = Get.find<LoginController>();

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
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.05, bottom: screenHeight * 0.05, left: screenWidth * 0.05, right: screenWidth * 0.05),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.05, bottom: screenHeight * 0.05, left: screenWidth * 0.05, right: screenWidth * 0.05),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(height: screenHeight * 0.030),
                      Padding(padding: EdgeInsets.only(top : screenHeight * 0.098)),
                      Text(
                        "STATIONARY",
                        style: titleText,
                      ),
                      Padding(padding: EdgeInsets.only(top: screenHeight * 0.030)),
                      Text(
                        "Your best friend in stationery",
                        style: defaultText
                      ),
                      Padding(padding: EdgeInsets.only(top: screenHeight * 0.032)),
                      Text(
                        "Login To Your Account",
                        style: defaultText
                      ),
                      Padding(padding: EdgeInsets.only(top: screenHeight * 0.020)),
                      myForm(context, Icons.email, 'Email', false, TextInputType.emailAddress, controller.cUsername),
                      Padding(padding: EdgeInsets.symmetric(vertical: screenHeight * 0.020)),
                      Obx(() {
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
                      Padding( padding: EdgeInsets.symmetric(vertical: screenHeight * 0.020)),
                      ElevatedButton(
                        onPressed: () {
                          controller.Login();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryTextColor,
                            minimumSize: Size.fromHeight(screenHeight * 0.070)
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: primaryColor
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: screenHeight * 0.030),
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Doesn't have an account? ",
                                  style: TextStyle(
                                    color: secondTextColor, // Customize the text color
                                  ),
                                ),
                                TextSpan(
                                  text: "Click here",
                                  style: TextStyle(
                                    color: primaryTextColor, // Customize the clickable text color
                                    decoration: TextDecoration.underline, // Add underline
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.toNamed(RouteName.register);
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.13,
            left: screenWidth * 0.0,
            right: screenWidth * 0.0,
            child: Image.asset(
              icon,
              height: screenHeight * 0.135,
            ),
          ),
        ],
      ),
    );
  }
}