import 'package:flutter/material.dart';
import 'package:stationery_store/helper/themes.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  MyButton({
    super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(color: darkerPrimaryTextColor.withOpacity(0.7),
            borderRadius: BorderRadius.circular(25)),
        padding: EdgeInsets.only(top: 20, bottom: 20, right: 50, left: 50),
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