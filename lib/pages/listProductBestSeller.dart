import 'package:flutter/material.dart';
import 'package:stationery_store/helper/themes.dart';

class ListProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Padding(
          padding : EdgeInsets.only(right: 20),
          child: Text(
            "Best Seller",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'LatoBold',
              color: primaryTextColor,
            ),
          ),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),

      body: Container(
        height: screenHeight,
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  child: listCard(),
                ),
                SizedBox(height: 16,),
              ],
            ),

          ],
        ),
      ),


    );
  }

  Widget listCard() {
    return Container(

      padding: EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        color: primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    text('assets/listProduct1.jpg'),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}

Widget text(image){
  return Column(
    children: [
      Image.asset(image,height: 100,),

      SizedBox(height: 16,),

      Text(
        "Oodwoaffwa",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 4),
      Text(
        "Description of the product goes here.",
        style: TextStyle(
          fontSize: 8,
        ),
      ),
    ],
  );
}
