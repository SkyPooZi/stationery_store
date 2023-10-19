import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  Widget text(){
    return Center(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 16.0)),
          Text(
            "Your best friend in stationery",
            style: TextStyle(
              fontFamily: 'NotoSerifMedium',
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 19.0)),
          Text(
            "Login To Your Account",
            style: TextStyle(
              fontFamily: 'NotoSerifMedium',
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 12.0)),
          TextField(
            cursorColor: Color(0xFF51321D),
            style: TextStyle(
              color: Color(0xFF51321D),
            ),
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(
                color: Color(0xFF51321D),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Color(0xFF51321D),
                  width: 2.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Color(0xFF51321D),
                  width: 2.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 18.0),
            child : TextField(
              cursorColor: Color(0xFF51321D),
              style: TextStyle(
                color:  Color(0xFF51321D),
              ),
              decoration: InputDecoration(
                labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Color(0xFF51321D),
                  ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Color(0xFF51321D),
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Color(0xFF51321D),
                    width: 2.0,
                  )
                )
              ),
              obscureText: true, // Hide password
            ),
          ),
          Padding( padding: EdgeInsets.symmetric(vertical: 8.0),),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login_register.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(height: 16),
                      Padding(padding: EdgeInsets.only(top : 16)),
                      Text(
                        "STATIONATOR",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      text(),

                      ElevatedButton(
                        onPressed: () {
                          Get.offNamed("/home");
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF51321D),
                            minimumSize: Size.fromHeight(48.0)
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Doesn't have an account? ",
                                  style: TextStyle(
                                    color: Color(0xFFC19475), // Customize the text color
                                  ),
                                ),
                                TextSpan(
                                  text: "Click here",
                                  style: TextStyle(
                                    color: Color(0xFF51321D), // Customize the clickable text color
                                    decoration: TextDecoration.underline, // Add underline
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.toNamed("/register");
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
            top: 15,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/icon.png',
              height: 135,
            ),
          ),
        ],
      ),
    );
  }
}
