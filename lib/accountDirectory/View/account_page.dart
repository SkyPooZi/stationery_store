import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helper/themes.dart';
import '../../routes/route_name.dart';
import '../Controller/account_controller.dart';

class AccountPage extends StatelessWidget {
  AccountPage({Key? key}) : super(key: key);
  final AccountController controller = Get.find<AccountController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Privacy & Policy", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lato',
          color: primaryTextColor,
        ),
        ),

        titleSpacing: 0,
        elevation: 0,
        foregroundColor: Colors.black87,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.offNamed(RouteName.profile);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(right: 30, left: 30, bottom: 30, top: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Obx(() =>
                    controller.selectedImage.value.isNotEmpty
                        ? Image.file(File(controller.selectedImage.value),width: 130,)
                        : Image.asset(profile_icon, width: 130,)
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15,),

              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Obx(() => controller.strUsername.value.isNotEmpty
                    ? Text(
                  "Username : ${controller.strUsername.value}",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),)
                    : Text("Username : Admin",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),),
                ),
              ),

              SizedBox(height: 15,),

              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Obx(() => controller.strName.value.isNotEmpty
                    ? Text(
                  "Full Name : ${controller.strName.value}",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),)
                    : Text("Full Name : Admin",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),),
                ),
              ),

              SizedBox(height: 15,),

              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Obx(() => controller.strEmail.value.isNotEmpty
                    ? Text(
                  "Email : ${controller.strEmail.value}",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),)
                    : Text("Email : Admin",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),),
                ),
              ),

              SizedBox(height: 15,),

              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Obx(() => controller.strPass.value.isNotEmpty
                    ? Text(
                  "Password : ${controller.strPass.value}",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),)
                    : Text("Password : Admin",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                    decoration: TextDecoration.none
                ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
