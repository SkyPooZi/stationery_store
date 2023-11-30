import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_store/homeDirectory/Controller/home_controller.dart';
import 'package:stationery_store/widget/navbar_bawah.dart';

import '../../helper/themes.dart';
import '../../routes/route_name.dart';
import '../../widget/navbar_atas.dart';
import '../../widget/promoCard.dart';
import '../../widget/show_top_up_dialog.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: NavbarAtas(
        controller: controller.cSearchProduct,
        onChanged: controller.onSearchProduct,
        categories: controller.categories,
        selectedCategory: controller.selectedCategory,
        onCategorySelected: controller.onCategorySelected,
      ),
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
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
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
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child : Row(
                                          children: [
                                            Obx(() => Text(
                                              "Rp. ${controller.formatCurrency(controller.currency.value)}",
                                              style: TextStyle(
                                                color: primaryColor,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    children: [
                                      Icon(Icons.credit_card,size: 30,color: primaryColor,),
                                      Text(
                                        "Pay",
                                        style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 16,
                                        ),),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          showTopUpDialog(Get.context!, controller.topUp);
                                        },
                                        child: Icon(Icons.add_box_outlined,size: 30,color: primaryColor,),
                                      ),
                                      Text(
                                        "Top Up",
                                        style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 16,
                                        ),),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    children: [
                                      Icon(Icons.send,size: 30,color: primaryColor,),
                                      Text(
                                        "Send",
                                        style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 16,
                                        ),),
                                    ],
                                  ),
                                ],
                              ),
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

                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(RouteName.list);
                                },
                                child: Container(
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
                              ),
                            ],
                          ),
                        ),

                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Container(
                        height: 220,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(RouteName.list);
                          },
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

                            GestureDetector(
                              onTap: () {
                                Get.toNamed(RouteName.list);
                              },
                              child: Container(
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
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(RouteName.list);
                          },
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
