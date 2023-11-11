import 'package:flutter/material.dart';
import 'package:stationery_store/helper/themes.dart';

class MyButton extends StatelessWidget {
  final String text;

  MyButton({
    super.key, required this.text,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(color: darkerPrimaryTextColor.withOpacity(0.7),
            borderRadius: BorderRadius.circular(25)),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.white),
            ),

            SizedBox(width: 10,),

            Icon(Icons.arrow_forward, color: Colors.white,),
          ],
        ),
      ),
    );
  }
}