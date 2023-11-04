import 'package:flutter/material.dart';
import 'package:stationery_store/widget/navbar_bawah.dart';

import '../helper/themes.dart';

class ChattingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 16, right: 10),
          child: Image.asset('assets/backButton.png', width: 24, height: 24),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.005, top: screenHeight * 0.005),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.05),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Chatting With You",
                              style: textChatting(),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.025),
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.05),
                          child: Container(
                            height: screenHeight * 0.003,
                            width: screenWidth * 0.700,
                            decoration: BoxDecoration(
                              color: lineColor,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Center(
                          child: Stack(
                            children: [
                              Image.asset('assets/bookBackground.png'),
                              Positioned(
                                top: screenHeight * 0.3,
                                left: screenHeight * 0.05,
                                child: Text(
                                  "You don't have anyone to talk to yet",
                                  textAlign: TextAlign.center,
                                  style: textNoChat(),
                                ),
                              ),
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
          NavbarBawah(),
        ],
      ),
    );
  }
}