// listProductPage.dart

import 'package:flutter/material.dart';
import 'package:stationery_store/helper/themes.dart';
import 'package:stationery_store/widget/navbar_atas.dart';

class ListProductPage extends StatelessWidget {
  // Example data
  final List<Map<String, dynamic>> products = [
    {
      'text': 'Product 1',
      'price': 'Rp.5000',
      'deskripsi': 'Lorem ipsum dolor sit amet,',
      'imagePath': 'assets/promoCard1.png',
    },
    {
      'text': 'Product 2',
      'price': 'Rp.7000',
      'deskripsi': 'Lorem ipsum dolor sit amet,',
      'imagePath': 'assets/promoCard1.png',
    },
    {
      'text': 'Product 3',
      'price': 'Rp.6000',
      'deskripsi': 'Lorem ipsum dolor sit amet,',
      'imagePath': 'assets/promoCard1.png',
    },
  ];

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width * 0.33;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: navbarAtas(),
      body: Container(
        color: primaryColor,
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final Map<String, dynamic> product = products[index];
            return Container(
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
                        product['imagePath'],
                        height: 130,
                        width: screenWidth,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),


                  SizedBox(width: 18),

                  Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align children along the start of the main axis
                      children: [

                        Row(
                          children: [
                            Text(
                              product['text'],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: primaryColor,
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child : Text(
                                product['price'],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 12,),

                        Text(
                          product['deskripsi'],
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),

                        SizedBox(height: 40,),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child : Padding(
                                padding: EdgeInsets.all(5),
                                child : Text(
                                  "See More",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor.withOpacity(0.7),
                                  ),
                                ),
                              ),
                            ),


                            SizedBox(width: 53,),

                            Text(
                              "Add To Cart",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: primaryColor.withOpacity(0.7),
                              ),
                            )

                          ],
                        )

                      ],
                    ),
                  ),

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
