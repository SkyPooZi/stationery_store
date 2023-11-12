import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_store/helper/themes.dart';
import 'package:stationery_store/widget/navbar_atas.dart';

import '../controllers/list_controller.dart';
import '../widget/loading_page.dart';
import '../widget/navbar_bawah.dart';

class ListPage extends StatelessWidget {
  ListPage({Key? key}) : super(key: key);
  ListController controller = Get.find<ListController>();

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width * 0.33;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: navbarAtas(selectedIndex: controller.selectedIndex.value, controller: controller.cSearchProduct, onChanged: controller.onSearchProduct),
      body: Container(
        color: primaryColor,
        child: Obx(() => controller.isLoading.value
            ? ListView.separated(
                itemCount: 5,
                itemBuilder: (context, index) => const ProductCardSkeleton(),
                separatorBuilder: (context, index) =>
                const SizedBox(height: defaultPadding),
              )
            : ListView.builder(
              itemCount: controller.filteredProducts.value.length,
              itemBuilder: (context, index) {
                final product = controller.filteredProducts[index];
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                  decoration: BoxDecoration(
                    color: thirdColor,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: primaryTextColor.withOpacity(0.25),
                        spreadRadius: 3,
                        blurRadius: 5,
                          offset: Offset(3,4)
                      )
                    ]
                  ),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                          child: Image.network(
                            product.image,
                            width: 130,
                            height: 195,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                      SizedBox(width: 18),

                      Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Row(
                              children: [
                                Container(
                                  width: 100, // Set the desired width
                                  child: Text(
                                    product.name,
                                    softWrap: true,  // Allow the text to wrap to the next line
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: primaryColor,
                                    ),
                                  ),
                                ),


                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child : Text(
                                    "Rp" + product.price.toString(),
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: primaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 12,),

                            Text(
                              "Stock : " + product.stock.toString(),
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: primaryColor,
                              ),
                            ),

                            SizedBox(height: 12,),

                            Text(
                              "Category : " + product.categories,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: primaryColor,
                              ),
                            ),

                            SizedBox(height: 40,),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child : Padding(
                                    padding: EdgeInsets.all(5),
                                    child : Text(
                                      "See More",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor.withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                ),


                                Padding(
                                  padding: EdgeInsets.only(left: 40, top: 5, bottom: 5, right: 5),
                                  child: Text(
                                    "Add To Cart",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: primaryColor.withOpacity(0.7),
                                    ),
                                  ),
                                )

                              ],
                            )

                          ],
                        ),
                      ),

                    ],
                  ),
                );
              },
            ),
        ),
      ),
      bottomNavigationBar: NavbarBawah(pressedIcon: primaryColor,),
    );
  }
}
