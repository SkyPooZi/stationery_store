import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/icon.png', width: 24, height: 24),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(
                color: Color(0xFF51321D),
                width: 2.0,
              ),
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                ),
                Expanded(
                  child: TextFormField(
                    cursorColor: Color(0xFF51321D),
                    decoration: InputDecoration(
                      hintText: "eg: Pensil",
                      border: InputBorder.none, // Remove the border from the input field
                    ),
                    style: TextStyle(
                      color: Color(0xFF51321D),
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
                Icon(Icons.search, color: Color(0xFF51321D)),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          child: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.025),
                      child: Image.asset(
                        'assets/headerBackground.png',
                        width: screenWidth,
                        height: screenHeight * 0.7,
                      ),
                    ),
                  ),

                  Column(
                    children: [
                      BubbleNavbar(),
                    ],
                  ),

                  Positioned(
                    top: 300.0,
                    left: 16.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BE SMART BE SHARP",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lato',
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "BE THE BEST",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'ItalicLato',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  image(context),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget image(BuildContext context){

  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;

  return Positioned(
    top: screenHeight * 0.4,
    child: Image.asset(
      'assets/catalogBackground.png',
      width: screenWidth,
      height: screenHeight,
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
    final List<String> items = ['All', 'Recommended', 'Stationery', 'Book', 'Utensils', 'Others'];

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
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10), // Increase vertical padding
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
