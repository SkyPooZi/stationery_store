import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_store/controllers/cart_controller.dart';

import '../helper/themes.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);
  CartController controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black87,
        backgroundColor: Colors.transparent,
        leading: (
            Icon(Icons.arrow_back_ios)
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Stationary Cart",style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                  ),),

                  SizedBox(height: 12,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Cart",style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Lato',
                        color: primaryTextColor,
                      ),
                        textAlign: TextAlign.center,
                      ),


                      SizedBox(width: 8,),

                      Text(
                        "On Going",style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Lato',
                        color: primaryTextColor.withOpacity(0.6),
                      ),),

                      SizedBox(width: 8,),

                      Text(
                        "Completed",style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Lato',
                        color: primaryTextColor.withOpacity(0.6),
                      ),),

                      SizedBox(height: 18,),

                    ],
                  ),

                  SizedBox(height: 8,),

                  Text(
                    "0 Items",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                    color: Colors.black87.withOpacity(0.4),
                  ),),

                ],
              ),
            ),

            SizedBox(height: 6,),

            Padding(
              padding: EdgeInsets.only(right: 14, left: 14),
              child: Container(
                height: 2,
                color: Colors.black.withOpacity(0.7),
                width: screenWidth,
              ),
            ),

            YourCart(),

            SizedBox(height: 12,),

            OnGoing(),

            SizedBox(height: 12,),

            Completed(),

          ],
        ),
      ),
    );
  }
}

Widget YourCart(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 14, top: 12),
        child : Text(
          "Your Cart",style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lato',
          color: primaryTextColor,
        ),),
      ),

      Container(
        height: 120,
        margin: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: primaryTextColor.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(3,4)
              )
            ]
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),

                child: Image.asset(
                  'assets/silverPen.jpg',
                  width: 120,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            SizedBox(width: 18,),

            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text(
                          "ifbaiwf",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                          softWrap: true,
                        ),
                      ),

                      SizedBox(height: 12,),

                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),

      SizedBox(height: 8,),

      Container(
        height: 120,
        margin: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: primaryTextColor.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(3,4)
              )
            ]
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),

                child: Image.asset(
                  'assets/silverPen.jpg',
                  width: 120,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            SizedBox(width: 18,),

            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text(
                          "ifbaiwf",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                          softWrap: true,
                        ),
                      ),

                      SizedBox(height: 12,),

                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),

      SizedBox(height: 8,),

      Container(
        height: 120,
        margin: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: primaryTextColor.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(3,4)
              )
            ]
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),

                child: Image.asset(
                  'assets/silverPen.jpg',
                  width: 120,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            SizedBox(width: 18,),

            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text(
                          "ifbaiwf",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                          softWrap: true,
                        ),
                      ),

                      SizedBox(height: 12,),

                    ],
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    ],
  );
}

Widget OnGoing(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 14, top: 12),
        child : Text(
          "On Going",style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lato',
          color: primaryTextColor,
        ),),
      ),

      SizedBox(height: 12,),

      Container(
        height: 120,
        margin: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: primaryTextColor.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(3,4)
              )
            ]
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),

                child: Image.asset(
                  'assets/silverPen.jpg',
                  width: 120,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            SizedBox(width: 18,),

            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text(
                          "ifbaiwf",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                          softWrap: true,
                        ),
                      ),

                      SizedBox(height: 12,),

                    ],
                  )
                ],
              ),
            ),


          ],
        ),
      ),

      SizedBox(height: 12,),

      Container(
        height: 120,
        margin: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: primaryTextColor.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(3,4)
              )
            ]
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),

                child: Image.asset(
                  'assets/silverPen.jpg',
                  width: 120,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            SizedBox(width: 18,),

            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text(
                          "ifbaiwf",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                          softWrap: true,
                        ),
                      ),

                      SizedBox(height: 12,),

                    ],
                  )
                ],
              ),
            ),


          ],
        ),
      ),

      SizedBox(height: 12,),

      Container(
        height: 120,
        margin: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: primaryTextColor.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(3,4)
              )
            ]
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),

                child: Image.asset(
                  'assets/silverPen.jpg',
                  width: 120,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            SizedBox(width: 18,),

            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text(
                          "ifbaiwf",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                          softWrap: true,
                        ),
                      ),

                      SizedBox(height: 12,),

                    ],
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    ],
  );
}

Widget Completed(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 14, top: 12),
        child : Text(
          "Completed",style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lato',
          color: primaryTextColor,
        ),),
      ),

      Container(
        height: 120,
        margin: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: primaryTextColor.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(3,4)
              )
            ]
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),

                child: Image.asset(
                  'assets/silverPen.jpg',
                  width: 120,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            SizedBox(width: 18,),

            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text(
                          "ifbaiwf",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                          softWrap: true,
                        ),
                      ),

                      SizedBox(height: 12,),

                    ],
                  )
                ],
              ),
            ),


          ],
        ),
      ),

      SizedBox(height: 12,),

      Container(
        height: 120,
        margin: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: primaryTextColor.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(3,4)
              )
            ]
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),

                child: Image.asset(
                  'assets/silverPen.jpg',
                  width: 120,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            SizedBox(width: 18,),

            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text(
                          "ifbaiwf",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                          softWrap: true,
                        ),
                      ),

                      SizedBox(height: 12,),

                    ],
                  )
                ],
              ),
            ),


          ],
        ),
      ),

      SizedBox(height: 12,),

      Container(
        height: 120,
        margin: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: primaryTextColor.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(3,4)
              )
            ]
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),

                child: Image.asset(
                  'assets/silverPen.jpg',
                  width: 120,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            SizedBox(width: 18,),

            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text(
                          "ifbaiwf",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                          softWrap: true,
                        ),
                      ),

                      SizedBox(height: 12,),

                    ],
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    ],
  );
}
