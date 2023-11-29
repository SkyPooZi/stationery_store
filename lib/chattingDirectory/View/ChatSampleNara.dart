import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:stationery_store/chattingDirectory/View/chatBottomScreen.dart';

import '../../helper/themes.dart';

class ChatSampleNara extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: secondaryColor,
              ),
              child: Text(
                "How's that cake yesterday? Does it taste great?",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'NotoSerifRegular',
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.send),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: primaryTextColor,
              ),
              child: Text(
                "It's totally good, Thanks for the cake btw",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'NotoSerifRegular',
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
