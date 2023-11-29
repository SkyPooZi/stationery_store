import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../helper/themes.dart';
import '../widget/text_field.dart';

class NavbarAtas extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController? controller;
  final Function(String) onChanged;
  final List<String> categories;
  final RxString selectedCategory;
  final Function(int) onCategorySelected;

  NavbarAtas({
    required this.controller,
    required this.onChanged,
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
            child: mySearchProduct(
              context,
              Icons.search,
              "eg: Pensil",
              controller,
              onChanged,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Obx(
                  () => Row(
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
                    child: Padding(
                      padding: EdgeInsets.only(left : 8.0),
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
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
