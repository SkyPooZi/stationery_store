import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_store/helper/themes.dart';
import 'package:stationery_store/models/list_model.dart';

import '../Controller/detail_controller.dart';
import '../../widget/buttonDetailPage.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key}) : super(key: key);
  final Map<String, dynamic> productData = Get.arguments as Map<String, dynamic>;
  DetailController controller = Get.find<DetailController>();

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "Detail Page", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato',
            color: primaryTextColor,
          ),
          ),

          titleSpacing: 0,
          elevation: 0,
          foregroundColor: Colors.black87,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Get.back();
            },
          ),
        ),

        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
                      child: Image.network(productData['image'], height: 200,fit: BoxFit.cover,),
                    ),
                  ),

                  SizedBox(height: 12,),

                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star,color: primaryTextColor,size: 20,),
                        SizedBox(width: 6,),

                        Text(productData['rating'].toString(), style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato',
                          color: primaryTextColor,
                        ),),

                        SizedBox(width: 205,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "3000 Reviews", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lato',
                              color: primaryTextColor,
                            ),),

                            Text(
                              "Stock : ${productData['stock']}", style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'NotoSerifRegular',
                              color: primaryTextColor.withOpacity(0.95),
                            ),),

                          ],
                        ),

                      ],
                    ),
                  ),

                  SizedBox(height: 12,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child : Text(productData['name'],style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato',
                          color: primaryTextColor,
                        ),),
                      ),

                      SizedBox(height: 12,),

                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child : Text("Category : ${productData['categories']}",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'NotoSerifRegular',
                            color: primaryTextColor,
                          ),),
                      ),

                      SizedBox(height: 12,),

                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child : Text("Description",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoSerifRegular',
                          color: primaryTextColor,
                        ),),
                      ),

                      SizedBox(height: 8,),

                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child : Text(productData['description'],
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'NotoSerifRegular',
                            color: primaryTextColor,
                          ),),
                      ),

                      SizedBox(height: 28,),

                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child : Text("Other Stuff You Might Like ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'NotoSerifRegular',
                            color: primaryTextColor,
                          ),),
                      ),

                      Container(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: (){},
                                  child: Padding(
                                    padding: EdgeInsets.all(12),
                                    child : Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: primaryTextColor,
                                      ),

                                    ),
                                  ),
                                ),

                                InkWell(
                                  onTap: (){},
                                  child: Padding(
                                    padding: EdgeInsets.all(12),
                                    child : Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: primaryTextColor,
                                      ),

                                    ),
                                  ),
                                ),

                                InkWell(
                                  onTap: (){},
                                  child: Padding(
                                    padding: EdgeInsets.all(12),
                                    child : Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: primaryTextColor,
                                      ),

                                    ),
                                  ),
                                ),

                                InkWell(
                                  onTap: (){},
                                  child: Padding(
                                    padding: EdgeInsets.all(12),
                                    child : Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: primaryTextColor,
                                      ),

                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Padding(
                            padding: EdgeInsets.only(left: 12, top: 12),
                            child : Text(
                              "Reviews",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'NotoSerifRegular',
                                color: primaryTextColor,
                              ),),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 9, top: 12),
                            child : Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.photo,color: primaryTextColor, ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 6),
                                          child : Text(
                                            "Dono",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'NotoSerifRegular',
                                              color: primaryTextColor,
                                            ),
                                          ),
                                        ),

                                        Padding(
                                            padding: EdgeInsets.only(left: 170),
                                            child : Row(
                                              children: [

                                                Icon(Icons.star,color: primaryTextColor,size: 20,),

                                                Text(
                                                  "Rating 4.7",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'ItalicLato',
                                                    fontWeight: FontWeight.bold,
                                                    color: primaryTextColor,
                                                  ),
                                                )
                                              ],
                                            )
                                        ),

                                      ],
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 6, bottom: 12),
                                      child : Text(
                                        "Saya sering membeli karena sangat murah!",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'NotoSerifMedium',
                                          color: primaryTextColor,
                                        ),
                                      ),

                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),

                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 9, top: 12),
                            child : Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.photo,color: primaryTextColor, ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 6),
                                          child : Text(
                                            "Dini",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'NotoSerifRegular',
                                              color: primaryTextColor,
                                            ),
                                          ),
                                        ),

                                        Padding(
                                            padding: EdgeInsets.only(left: 170),
                                            child : Row(
                                              children: [

                                                Icon(Icons.star,color: primaryTextColor,size: 20,),

                                                Text(
                                                  "Rating 4.9",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'ItalicLato',
                                                    fontWeight: FontWeight.bold,
                                                    color: primaryTextColor,
                                                  ),
                                                )
                                              ],
                                            )
                                        ),

                                      ],
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 6, bottom: 12),
                                      child : Text(
                                        "Wow, Saya sangat suka dengan modelnya",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'NotoSerifMedium',
                                          color: primaryTextColor,
                                        ),
                                      ),

                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),

                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 9, top: 12),
                            child : Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.photo,color: primaryTextColor, ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 6),
                                          child : Text(
                                            "Dino",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'NotoSerifRegular',
                                              color: primaryTextColor,
                                            ),
                                          ),
                                        ),

                                        Padding(
                                            padding: EdgeInsets.only(left: 170),
                                            child : Row(
                                              children: [

                                                Icon(Icons.star,color: primaryTextColor,size: 20,),

                                                Text(
                                                  "Rating 4.8",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'ItalicLato',
                                                    fontWeight: FontWeight.bold,
                                                    color: primaryTextColor,
                                                  ),
                                                )
                                              ],
                                            )
                                        ),

                                      ],
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 6, bottom: 12),
                                      child : Text(
                                        "Barang yang Bagus!",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'NotoSerifMedium',
                                          color: primaryTextColor,
                                        ),
                                      ),

                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),

                    ],
                  ),

                ],
              ),
            ),

            Container(
              color: primaryTextColor,
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rp. ${productData['price']}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato',
                          color: primaryColor,
                        ),),
                      MyButton(
                        text: controller.isAddedToCart.value ? "On Cart" : "Add To Cart",
                        onPressed: () {
                          if (!controller.isAddedToCart.value) {
                            controller.addToCart();
                            controller.isAddedToCart.value = false;
                          }
                        },
                      ),
                    ],
                  )),
                ],
              ),
            )
          ],
        ),
      );
  }
}
