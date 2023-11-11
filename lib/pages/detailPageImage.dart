import 'package:flutter/material.dart';
import 'package:stationery_store/helper/themes.dart';

import '../widget/buttonDetailPage.dart';

class DetailPageImages extends StatefulWidget {

  @override
  State<DetailPageImages> createState() => _DetailPageImagesState();
}

class _DetailPageImagesState extends State<DetailPageImages> {

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
        leading: (
        Icon(Icons.arrow_back_ios)
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
                    child: Image.asset('assets/silverPen.jpg', height: 230,fit: BoxFit.cover,),
                  ),
                ),

                SizedBox(height: 12,),

                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child : Row(
                    children: [
                      Icon(Icons.star,color: primaryTextColor,size: 20,),
                      SizedBox(width: 6,),

                      Text("4.9", style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                        color: primaryTextColor,
                      ),),

                      SizedBox(width: 205,),

                      Text("2000 Reviews", style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                        color: primaryTextColor,
                      ),),

                    ],
                  ),
                ),

                SizedBox(height: 12,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child : Text("Silver Pen",style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
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
                      child : Text("Lorem Ipsum Dolor Sit Amet",
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
                                            "Skypoo",
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
                                      "dnapwofubiaipfosbf",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rp. 5000",
                      style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lato',
                      color: primaryColor,
                    ),),

                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: darkerPrimaryTextColor.withOpacity(0.7),
                              shape: BoxShape.circle
                          ),
                          child: IconButton(
                            icon: Icon(Icons.remove, color: primaryColor,),
                            onPressed: () {  },
                          ),
                        ),

                        SizedBox(width: 12,),

                        Text("1", style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato',
                          color: primaryColor,
                        ),),

                        SizedBox(width: 12,),


                        Container(
                          decoration: BoxDecoration(
                              color: darkerPrimaryTextColor.withOpacity(0.7),
                              shape: BoxShape.circle
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add, color: primaryColor,),
                            onPressed: () {  },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 10,),

                MyButton(text: "Add To Cart")

              ],
            ),

          )
        ],
      ),
    );
  }
}
