import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_store/profileDirectory/Controller/profile_controller.dart';

import '../../helper/themes.dart';
import '../../routes/route_name.dart';
import '../../widget/navbar_bawah.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  ProfileController controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryColor,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset("assets/headerBackground.png"),
            Padding(
              padding: EdgeInsets.only(top : 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12, ),
                    child : IconButton(
                      icon: Icon(Icons.arrow_back, color: primaryColor,),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(Icons.settings, color: primaryColor,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 90, top: 15),
              child : Image.asset("assets/profileIcon.png", width : 250,),
            ),
            Column(
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

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: EdgeInsets.only(left: 34),
                      child: Obx(() => controller.strName.value.isNotEmpty
                          ? Text(
                          controller.strUsername.value,style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Lato',
                            color: primaryTextColor,
                            decoration: TextDecoration.none
                        ),)
                          : Text("Admin",style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Lato',
                          color: primaryTextColor,
                          decoration: TextDecoration.none
                      ),),
                      ),
                    ),

                    SizedBox(height: 6,),

                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on, color: primaryTextColor.withOpacity(0.7),),
                          Text("Palembang, Sumatera Selatan",style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Lato',
                              color: primaryTextColor.withOpacity(0.7),
                              decoration: TextDecoration.none
                          ),),
                        ],
                      ),
                    ),

                    SizedBox(height: 6,),

                    Padding(
                      padding: EdgeInsets.only(left: 36),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Obx(() => controller.strName.value.isNotEmpty
                              ? Text("Full Name : ${controller.strName.value}",style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Lato',
                                color: primaryTextColor.withOpacity(0.7),
                                decoration: TextDecoration.none
                            ),)
                              : Text("Full Name : Admin",style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Lato',
                                color: primaryTextColor.withOpacity(0.7),
                                decoration: TextDecoration.none
                            ),),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 16,),

                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteName.account);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                color: primaryTextColor.withOpacity(0.25),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(3,4)
                            ),
                          ],
                        ),

                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Icon(Icons.account_box, color : primaryTextColor),

                              SizedBox(width: 6,),

                              Text("Account", style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Lato',
                                  color: primaryTextColor,
                                  decoration: TextDecoration.none
                              ),),

                              SizedBox(width: 190,),

                              Icon(Icons.arrow_forward_ios, color: primaryTextColor)

                            ],
                          ),
                        ),

                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteName.privacy);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                color: primaryTextColor.withOpacity(0.25),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(3,4)
                            ),
                          ],
                        ),

                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Icon(Icons.privacy_tip_outlined, color : primaryTextColor),

                              SizedBox(width: 6,),

                              Text("Privacy & Policy", style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Lato',
                                  color: primaryTextColor,
                                  decoration: TextDecoration.none
                              ),),

                              SizedBox(width: 140,),

                              Icon(Icons.arrow_forward_ios, color: primaryTextColor)

                            ],
                          ),
                        ),

                      ),
                    ),

                    SizedBox(height: 12,),

                    Container(
                      width: 110,
                      height: 60,
                      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: primaryTextColor.withOpacity(0.25),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(3,4)
                          ),
                        ],
                      ),

                      child: GestureDetector(
                        onTap: () {
                          controller.logout();
                        },
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Icon(Icons.power_settings_new, color : primaryColor),

                              SizedBox(width: 6,),

                              Text("Log Out", style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Lato',
                                  color: primaryColor,
                                  decoration: TextDecoration.none
                              ),),

                            ],
                          ),
                        ),
                      ),

                    ),

                  ],
                ),

              ],
            ),

          ],
        ),
      ),
      bottomNavigationBar: NavbarBawah(pressedIcon: primaryColor,),
    );
  }
}
