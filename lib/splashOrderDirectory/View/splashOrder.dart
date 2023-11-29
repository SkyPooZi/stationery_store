import 'package:flutter/material.dart';

import '../../helper/themes.dart';

class splashOrder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: AlertDialog(
            backgroundColor: Colors.transparent,
            content: Center(
              child: Column (
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 200),
                    child: Icon(
                      Icons.check, size: 200,
                    ),
                  ),
                  Text("Thanks For Buying", style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
