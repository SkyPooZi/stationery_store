import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showTopUpDialog(BuildContext context, Function(String) topUp) {
  TextEditingController topUpController = TextEditingController();

  Get.defaultDialog(
    title: 'Top Up',
    content: Column(
      children: [
        Text('Masukkan jumlah top-up:'),
        TextField(
          controller: topUpController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(labelText: 'Jumlah Top Up'),
        ),
      ],
    ),
    actions: [
      ElevatedButton(
        onPressed: () {
          topUp(topUpController.text);
          Get.back();
        },
        child: Text('Top Up'),
      ),
      ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text('Batal'),
      ),
    ],
  );
}