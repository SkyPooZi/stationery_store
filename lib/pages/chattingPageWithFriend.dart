import 'package:flutter/material.dart';
import 'package:stationery_store/widget/navbar_bawah.dart';

import '../helper/themes.dart';

class chattingPageWithFriend extends StatelessWidget {
  const chattingPageWithFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Detail Page", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lato',
          color: primaryTextColor,
        ),),

        titleSpacing: 0,
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        leading: (
            Icon(Icons.arrow_back_ios)
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Chatting With You",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Lato',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 23),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Container(
                            height: 2,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),

                        Center(
                          child: Stack(
                            children: [
                              Container(
                              width: 362,
                              height: 102,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white)
                          ),

                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/chattingProfilePictureJustin.png",
                                        width: 63,
                                        height: 75,
                                      ),
                                      SizedBox(width: 10), // Add space between the image and text
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Justin",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Text(
                                            "Lorem ipsum dolor sit amet, consectet",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 27,
                                right: 15,
                                child: Text(
                                "Yesterday",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),)
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Center(
                          child: Stack(
                            children: [
                              Container(
                                  width: 362,
                                  height: 102,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white)
                              ),

                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/chattingProfilePictureNara.png",
                                        width: 63,
                                        height: 75,
                                      ),
                                      SizedBox(width: 10), // Add space between the image and text
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Justin",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Text(
                                            "Lorem ipsum dolor sit amet, consectet",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 27,
                                right: 15,
                                child: Text(
                                  "19.40 PM",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          NavbarBawah(pressedIcon: primaryColor )
        ],
      ),
    );
  }
}
