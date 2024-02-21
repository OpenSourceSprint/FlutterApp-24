import 'package:ecommerce_app_opensrc/models/product_model.dart';
import 'package:flutter/material.dart';

List<Product> dummyProducts = [
  Product(
    id: '1',
    name: 'Product 1',
    quantity: '2',
    price: '10.99',
    description: "Lorem ipsum dolor.",
    image: const AssetImage('assets/dummycart.jpg'),
  ),
  Product(
    id: '2',
    name: 'Product 2',
    quantity: '2',
    price: '20.99',
    description: "Lorem ipsum dolor.",
    image: const AssetImage('assets/dummycart.jpg'),
  ),
  Product(
    id: '3',
    name: 'Product 3',
    quantity: '2',
    price: '30.99',
    description: "Lorem ipsum dolor.",
    image: const AssetImage('assets/dummycart.jpg'),
  ),
  Product(
    id: '4',
    name: 'Product 4',
    quantity: '3',
    price: '20.99',
    description: "Lorem ipsum dolor.",
    image: const AssetImage('assets/dummycart.jpg'),
  ),
  Product(
    id: '5',
    name: 'Product 5',
    quantity: '5',
    price: '30.99',
    description: "Lorem ipsum dolor.",
    image: const AssetImage('assets/dummycart.jpg'),
  ),
];
