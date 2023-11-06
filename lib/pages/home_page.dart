import 'package:flutter/material.dart';
import 'package:stationery_store/widget/navbar_bawah.dart';

import '../helper/themes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          flexibleSpace: Column(
            children: [
              Container(
                width: screenWidth,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  cursorColor: primaryTextColor,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: primaryTextColor,
                      ),
                      hintText: "eg : Pensil",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: primaryTextColor, width: 2.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: primaryTextColor, width: 2.0))),
                  style: TextStyle(
                    color: primaryTextColor,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
              BubbleNavbar(),
            ],
          ),
        ),
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
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Welcome To",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Stationator",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Poppins',
                        color: primaryTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
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
                          width: screenWidth * 0.68,
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
                        )
                      ],
                    ),
                    Container(
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
                    Container(
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
                            width: screenWidth * 0.7,
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
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavbarBawah(),
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

class BubbleNavbar extends StatefulWidget {
  @override
  _BubbleNavbarState createState() => _BubbleNavbarState();
}

class _BubbleNavbarState extends State<BubbleNavbar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'All',
      'Recommended',
      'Stationery',
      'Book',
      'Utensils',
      'Others'
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.asMap().entries.map((entry) {
          final int index = entry.key;
          final String item = entry.value;
          final isSelected = index == selectedIndex;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 24, vertical: 8), // Increase vertical padding
              decoration: BoxDecoration(
                color: isSelected ? Color(0xFF51321D) : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  item,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
