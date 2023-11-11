// To parse this JSON data, do
//
//     final productResponseModel = productResponseModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<ProductResponseModel> productResponseModelFromJson(String str) => List<ProductResponseModel>.from(json.decode(str).map((x) => ProductResponseModel.fromJson(x)));

String productResponseModelToJson(List<ProductResponseModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductResponseModel {
  int id;
  String image;
  String name;
  String categories;
  int stock;
  double rating;
  int price;
  String description;

  ProductResponseModel({
    required this.id,
    required this.image,
    required this.name,
    required this.categories,
    required this.stock,
    required this.rating,
    required this.price,
    required this.description,
  });

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) => ProductResponseModel(
    id: json["id"],
    image: json["image"],
    name: json["name"],
    categories: json["categories"],
    stock: json["stock"],
    rating: json["rating"]?.toDouble(),
    price: json["price"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "name": name,
    "categories": categories,
    "stock": stock,
    "rating": rating,
    "price": price,
    "description": description,
  };
}
