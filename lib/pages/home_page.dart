import 'package:flutter/material.dart';
import 'package:stationery_store/pages/promoCard.dart';
import 'package:stationery_store/widget/navbar_bawah.dart';

import '../helper/themes.dart';
import '../widget/navbar_atas.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    int currency = 0;

    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: navbarAtas(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 16, top: 9, bottom: 7),
                          child: Text(
                            "Welcome To",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                              color: Colors.black87,
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child : Text(
                            "Stationator",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Poppins',
                              color: primaryTextColor,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Padding(
                          padding: EdgeInsets.all(16),
                          child : promoCard(),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Padding(
                          padding: EdgeInsets.only(right: 16, left: 16, bottom: 12),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: primaryTextColor.withOpacity(0.35),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(2,4),
                                ),
                              ],
                              color: thirdColor,
                            ),

                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(16),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 5.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.wallet,
                                                    color: primaryColor,
                                                  ),

                                                  Padding(
                                                    padding: EdgeInsets.only(left: 6),
                                                    child : Text(
                                                      "Currency",
                                                      style: TextStyle(
                                                        color: primaryColor,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),),
                                                  ),

                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.only(left: 26.95),
                                                        child: Row(
                                                          children: [
                                                            Icon(Icons.credit_card,size: 30,color: primaryColor,),
                                                            SizedBox(width: 30,),
                                                            Image.asset('assets/plusButton.png', scale: 4/3,),
                                                            SizedBox(width: 35,),
                                                            Image.asset('assets/paperPlane.png', scale: 4/3,)
                                                          ],
                                                        )
                                                      )
                                                    ],
                                                  ),

                                                ],
                                              ),

                                              Padding(
                                                padding: EdgeInsets.only(top: 5),
                                                child : Row(
                                                  children: [
                                                    Text(
                                                      "Rp. " + currency.toString(),
                                                      style: TextStyle(
                                                        color: primaryColor,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),),

                                                    SizedBox(width: 90,),

                                                    Text(
                                                      "Pay",
                                                      style: TextStyle(
                                                        color: primaryColor,
                                                        fontSize: 16,
                                                      ),),

                                                    SizedBox(width: 17,),

                                                    Text(
                                                      "Top Up",
                                                      style: TextStyle(
                                                        color: primaryColor,
                                                        fontSize: 16,
                                                      ),),

                                                    SizedBox(width: 12,),

                                                    Text(
                                                      "Send",
                                                      style: TextStyle(
                                                        color: primaryColor,
                                                        fontSize: 16,
                                                      ),),
                                                  ],
                                                )
                                              ),
                                            ],
                                          )
                                        ),
                                      ],
                                    ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),

                        Padding(
                          padding: EdgeInsets.only(left: 11),
                          child: Row(
                            children: [
                              Text(
                                "Best Seller",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Lato',
                                  color: primaryTextColor,
                                ),
                              ),

                              Container(
                                width: screenWidth * 0.72,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "See All",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Lato',
                                      color: primaryTextColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Container(
                        height: 220,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            sellerCard('assets/faberCastle.jpg', 'Faber Castle'),
                            sellerCard('assets/pinkNoteBook.jpg', 'Pinky Notes'),
                            sellerCard('assets/silverPen.jpg', 'Silvery Pen'),
                            sellerCard('assets/stationerySet.jpg', 'School Set'),
                            sellerCard('assets/marker.jpg', 'Board Marker'),
                            sellerCard('assets/etc2.jpg', 'ETC.'),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 16),
                      child: Container(
                        padding: EdgeInsets.only(top: 22),
                        child: Row(
                          children: [
                            Text(
                              "Category",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Lato',
                                color: primaryTextColor,
                              ),
                            ),

                            Container(
                              width: screenWidth * 0.72,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "See All",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lato',
                                    color: primaryTextColor,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Container(
                        margin: EdgeInsets.only(top: 8, bottom: 16),
                        height: 220,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            categoryCard('assets/brownPen.jpg', 'Pen'),
                            categoryCard('assets/brownBook.jpg', 'Book'),
                            categoryCard('assets/brownNoteBook.jpg', 'Note Book'),
                            categoryCard('assets/brownScissors.jpg', 'Scissors'),
                            categoryCard(
                                'assets/brownFileFolder.jpg', 'File Folder'),
                            categoryCard('assets/etc.jpg', 'ETC.'),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavbarBawah(pressedIcon: primaryColor,),

    );
  }
}

Widget categoryCard(image, text) {
  return AspectRatio(
    aspectRatio: 1 / 1,
    child: Container(
      margin: EdgeInsets.only(right: 15.0, top: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
              0.1,
              0.9
            ], colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.1)
            ])),
        child: Padding(
          padding: EdgeInsets.only(top: 160),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'Poppins',
              color: primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}

Widget sellerCard(image, text) {
  return AspectRatio(
    aspectRatio: 2.68 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 15.0, top: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
              0.1,
              0.9
            ], colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1)
            ])),
        child: Padding(
          padding: EdgeInsets.only(top: 160),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'Poppins',
              color: primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}
