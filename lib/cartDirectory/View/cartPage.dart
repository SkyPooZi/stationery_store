import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_store/cartDirectory/Controller/cart_controller.dart';
import '../../helper/themes.dart';
import '../../widget/navbar_atas_cart.dart';
import '../../widget/navbar_bawah.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);
  final CartController controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: NavbarAtasCart(
        categories: controller.categories,
        selectedCategory: controller.selectedCategory,
        onCategorySelected: controller.onCategorySelected,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 14),
                child: Obx(() => Text(
                  "${controller.filteredProducts.length} Items",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                    color: Colors.black87.withOpacity(0.4),
                  ),
                )),
              ),
              SizedBox(height: 6),
              Container(
                height: 2,
                color: Colors.black.withOpacity(0.7),
                width: screenWidth,
              ),
              Padding(
                padding: EdgeInsets.only(left: 14, top: 10, bottom: 10),
                child: Obx(() => Text(
                  controller.selectedCategory.value.toString(),
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                    color: primaryTextColor,
                  ),
                )),
              ),
            ],
          ),
          Expanded(
            child: Obx(() => controller.filteredProducts.isEmpty
                ? Center(
              child: Text('Cart is Empty'),
            )
                : ListView.builder(
              itemCount: controller.filteredProducts.length,
              itemBuilder: (context, index) {
                final productData = controller.filteredProducts[index];
                final int quantity = productData['quantity'] ?? 1;
                final int price = productData['price'] ?? 0;
                final int totalPrice = quantity * price;

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
                        offset: Offset(3, 4),
                      )
                    ],
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
                            productData['image'],
                            width: 130,
                            height: 205,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 18),
                      Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 150,
                              child: Text(
                                productData['name'],
                                softWrap: true,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            Text(
                              "Stock : ${productData['stock']}",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: primaryColor,
                              ),
                            ),
                            SizedBox(height: 12,),
                            Text(
                              "Category : ${productData['categories']}",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: primaryColor,
                              ),
                            ),
                            SizedBox(height: 12,),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: darkerPrimaryTextColor.withOpacity(0.7),
                                      shape: BoxShape.circle
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.remove, color: primaryColor,),
                                    onPressed: () {
                                      controller.decreaseQuantity(productData);
                                    },
                                  ),
                                ),
                                SizedBox(width: 12,),
                                Text(quantity.toString(), style: TextStyle(
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
                                    onPressed: () {
                                      controller.increaseQuantity(productData);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12,),
                            Text(
                              "Rp. $totalPrice",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: primaryColor,
                              ),
                            ),
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
          Container(
            color: primaryTextColor,
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rp. ${controller.calculateTotalPrice()}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                        color: primaryColor,
                      ),),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: darkerPrimaryTextColor
                      ),
                      child: Text("Make Order"),
                    ),
                  ],
                )),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: NavbarBawah(pressedIcon: primaryColor),
    );
  }
}
