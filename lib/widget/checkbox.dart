import 'package:flutter/material.dart';
import 'package:stationery_store/helper/themes.dart';

class checkboxPayment extends StatefulWidget {
  const checkboxPayment({Key? key}) : super(key: key);

  @override
  State<checkboxPayment> createState() => _checkboxPaymentState();
}

class _checkboxPaymentState extends State<checkboxPayment> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Checkbox(
        value: isChecked,
        activeColor: primaryTextColor,
        tristate: true,
        onChanged: (newBool) {
          setState(() {
            isChecked = newBool;
          });
        },
      ),
    );
  }
}
