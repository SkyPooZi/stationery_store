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
            "Create Your Account",
            style: TextStyle(
              fontFamily: 'NotoSerifMedium',
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 12.0)),
          TextFormField(
            style: TextStyle(
              color: Color(0xFF51321D),
            ),
            decoration: InputDecoration(
              labelText: 'Username',
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
            child : TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
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
          ElevatedButton(
            onPressed: () {

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
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login_register.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Card on Top of the Background
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(height: 16), // Add space at the top for the image
                      Image.asset(
                        'assets/icon.png', // Replace with your image path
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
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
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
