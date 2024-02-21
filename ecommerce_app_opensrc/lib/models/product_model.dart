import 'package:flutter/material.dart';

class Product {
  final String name;
  final String price;
  String? description;
  final AssetImage? image;
  String quantity;
  final String id;

  Product({
    required this.id,
    required this.name,
    required this.price,
    this.description,
    this.image,
    required this.quantity,
  });
}
