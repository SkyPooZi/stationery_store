import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:stationery_store/widget/text_field.dart';

import '../helper/themes.dart';

class navbarAtas extends StatelessWidget implements PreferredSizeWidget{
  final int selectedIndex;
  TextEditingController? controller;
  final Function(String) onChanged;

  navbarAtas({required this.selectedIndex, required this.controller, required this.onChanged});

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
            child: mySearchProduct(context, Icons.search,"eg: Pensil" ,controller ,onChanged)
          ),
          BubbleNavbar(selectedIndex: selectedIndex),
        ],
      ),
    );
  }
}

class BubbleNavbar extends StatefulWidget {
  int selectedIndex;

  BubbleNavbar({required this.selectedIndex});

  @override
  _BubbleNavbarState createState() => _BubbleNavbarState(selectedIndex: selectedIndex);
}

class _BubbleNavbarState extends State<BubbleNavbar> {
  int selectedIndex = 0;

  _BubbleNavbarState({required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'All',
      'Recommended',
      'Amplop',
      'Penjepit Kertas',
      'Buku',
      'Pemotong',
      'Kertas',
      'Isolasi',
      'Lem Perekat',
      'Map',
      'Alat Ukur',
      'Alat Tulis',
      'Penghapus',
      'Aksesoris Komputer',
      'Pendamping Fotocopy',
      'Sticky Noted',
      'Pendamping ATK',
    ];

    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 8, left: 8, right: 8),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.asMap().entries.map((entry) {
          final int index = entry.key;
          final String item = entry.value;
          final isSelected = index == widget.selectedIndex;
          print(items);

          return GestureDetector(
            onTap: () {
              setState(() {
                widget.selectedIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 24, vertical: 8),
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
