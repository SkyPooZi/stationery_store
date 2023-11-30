import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_store/helper/themes.dart';
import 'package:stationery_store/paymentPage/Controller/payment_controller.dart';

import '../../routes/route_name.dart';
import '../../widget/checkbox.dart';
import '../../widget/paymentList.dart';

class PaymentPage extends StatelessWidget {
  PaymentPage({Key? key}) : super(key: key);
  PaymentController controller = Get.put(PaymentController());
  final pricePayment = Get.arguments;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

      Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Select your payment method.",
                style: TextStyle(
                  color: primaryTextColor,
                  fontSize: 18,
                  fontFamily: 'Lato',
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.wallet_rounded, size: 50,),

                SizedBox(width: 12,),

                Column(
                  children: [
                    Text("Your Wallet", style: TextStyle(
                      color: primaryTextColor,
                      fontSize: 14,
                      fontFamily: 'Lato',
                    ),),
                    Obx(() => Text("Rp. ${controller.intCurrency.toString()}",style: TextStyle(
                        color: primaryTextColor,
                        fontSize: 12,
                        fontFamily: 'Lato',
                      ), ),
                    )
                  ],
                ),

                checkboxPayment(),

              ],
            ),

            SizedBox(height: 16,),

            paymentList('assets/bca.png', "BCA Mobile"),

            SizedBox(height: 16,),

            paymentList('assets/bni.jpg', "BNI"),

            SizedBox(height: 16,),

            paymentList('assets/ovo.jpg', "OVO"),
            
            Padding(
              padding: EdgeInsets.only(top: 110.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rp. ${pricePayment}", style: TextStyle(
                      color: primaryTextColor,
                      fontSize: 14,
                      fontFamily: 'Lato',
                    ),),

                  ElevatedButton(onPressed: () {
                    Get.dialog(
                      AlertDialog(
                        content: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.check,
                                size: 200,
                                color: Colors.green,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Product has been bought!",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: primaryTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    );
                    Future.delayed(Duration(seconds: 3), () {
                      Get.offNamed(RouteName.cart);
                    });
                  },style: ElevatedButton.styleFrom(
                    backgroundColor: primaryTextColor,
                  ), child: Text("Pay"))
                ],
              ),
            )
          ],
        ),
      ),
    ),],),
    );
  }
}
