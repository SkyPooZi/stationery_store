import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_store/controllers/register_controller.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({Key? key}) : super(key: key);

  Widget icon(){
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: Positioned(
          bottom: 10,
          child: Image.asset(
            'assets/icon.png',
            height: 110,
          ),
        ),
      ),
    );
  }

  Widget text(){
    return Center(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 16.0)),
          Text(
            "Create Your Account",
            style: TextStyle(
              fontFamily: 'NotoSerifMedium',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.0, right: 18.0, top: 20.0),
            child : TextField(
              controller: controller.cName,
              cursorColor: Color(0xFF51321D),
              style: TextStyle(
                color:  Color(0xFF51321D),
              ),
              decoration: InputDecoration(
                  labelText: 'Name',
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
          Padding(
            padding: EdgeInsets.only(left: 18.0, right: 18.0, top: 8.0),
            child : TextField(
              controller: controller.cUsername,
              cursorColor: Color(0xFF51321D),
              style: TextStyle(
                color:  Color(0xFF51321D),
              ),
              decoration: InputDecoration(
                  labelText: 'Username',
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
          Padding(
            padding: EdgeInsets.only(left: 18.0, right: 18.0, top: 8.0),
            child : TextField(
              controller: controller.cEmail,
              cursorColor: Color(0xFF51321D),
              style: TextStyle(
                color:  Color(0xFF51321D),
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
                      )
                  )
              ),
              obscureText: true, // Hide password
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.0, right: 18.0, top: 8.0),
            child : TextField(
              controller: controller.cPass,
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
      body: Obx(() => Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login_register.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          if (controller.isLoading.value)
            Center(child: CircularProgressIndicator())
          else
            Padding(
              padding: const EdgeInsets.all(16.0),
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

                        icon(),

                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18.0),
                      child: Text(
                        "STATIONATOR",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    text(),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding : EdgeInsets.only(bottom: 16.0),
                      child : ElevatedButton(
                        onPressed: () {
                          controller.Register();
                          Get.toNamed("/home");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF51321D),
                          minimumSize: Size(270, 48),
                        ),
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      )),
    );
  }

}