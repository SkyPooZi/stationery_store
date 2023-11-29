import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:stationery_store/helper/themes.dart';

import 'ChatSampleNara.dart';
import 'chatBottomScreen.dart';

class chattingDetailPageNara extends StatelessWidget {
  const chattingDetailPageNara({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 2,
          backgroundColor: primaryColor,
          leading: IconButton(onPressed: () {
            Get.back();
          },icon : Icon(Icons.arrow_back_ios, color: primaryTextColor,)
          ),
          title: Row(
            children: [
              ClipRRect(
                child: Image.asset('assets/chattingProfilePictureNara.png', height: 45, width: 45,),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Nara",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: primaryTextColor,
                ),
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 80),
        children: [
          ChatSampleNara(),
        ],
      ),
      bottomSheet: ChatBottomScreen(),
    );
  }
}
