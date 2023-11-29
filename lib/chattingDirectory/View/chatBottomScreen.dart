import 'package:flutter/material.dart';
import 'package:stationery_store/helper/themes.dart';

class ChatBottomScreen extends StatelessWidget {
  const ChatBottomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: primaryColor,
        boxShadow: [
          BoxShadow(
            color: secondaryColor,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(
              0,3
            ),
          )
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(Icons.add, color: primaryTextColor,),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(Icons.emoji_emotions_outlined, color: primaryTextColor,),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              alignment: Alignment.centerRight,
              width: 240,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Type Something",
                  border: InputBorder.none,
                ),style: TextStyle(
                color: primaryTextColor,
              ),
                cursorColor: primaryTextColor,
              ),
            )
          ),
          Icon(Icons.send, color: primaryTextColor,),
        ],
      ),
    );
  }
}
