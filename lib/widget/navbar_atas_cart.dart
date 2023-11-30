import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helper/themes.dart';
import '../routes/route_name.dart';

class NavbarAtasCart extends StatelessWidget implements PreferredSizeWidget {
  final List<String> categories;
  final RxString selectedCategory;
  final Function(int) onCategorySelected;

  NavbarAtasCart({
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return AppBar(
      elevation: 0,
      foregroundColor: Colors.black87,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        padding: EdgeInsets.only(left: 14, right: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Get.offNamed(RouteName.home);
                  },
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Stationary Cart",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                        color: primaryTextColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 12,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Obx(() => Row(
                  children: categories.asMap().entries.map((entry) {
                    final index = entry.key;
                    final category = entry.value;
                    final isSelected = selectedCategory.value == category;

                    return GestureDetector(
                      onTap: () {
                        selectedCategory.value = category;
                        onCategorySelected(index);
                        print(selectedCategory.value);
                      },
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                        decoration: BoxDecoration(
                          color: isSelected ? thirdColor : Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            category,
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
              ),
            ),

            SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}

