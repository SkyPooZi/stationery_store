import 'package:flutter/material.dart';

import '../helper/themes.dart';

class navbarAtas extends StatelessWidget implements PreferredSizeWidget{

  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return AppBar(
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
                fontFamily: 'LatoBold',
              ),
            ),
          ),
          BubbleNavbar(),
        ],
      ),
    );
  }
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
      padding: EdgeInsets.only(top: 8, left: 8, right: 8),
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
                color: isSelected ? thirdColor : Colors.transparent,
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
