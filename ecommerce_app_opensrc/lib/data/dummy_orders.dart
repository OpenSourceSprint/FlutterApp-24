import 'package:ecommerce_app_opensrc/models/order_model.dart';
import 'package:ecommerce_app_opensrc/models/product_model.dart';

List<Order> dummyOrders = [
  Order(
    orderId: '1',
    name: 'Order 1',
    products: [
      Product(id: '1', name: 'Product 1', price: '10', quantity: '2'),
      Product(id: '2', name: 'Product 2', price: '20', quantity: '1'),
    ],
    itemCount: 3,
    aggregatePrice: 40,
  ),
  Order(
    orderId: '2',
    name: 'Order 2',
    products: [
      Product(id: '3', name: 'Product 3', price: '15', quantity: '3'),
      Product(id: '4', name: 'Product 4', price: '25', quantity: '2'),
    ],
    itemCount: 5,
    aggregatePrice: 90,
  ),
  Order(
    orderId: '3',
    name: 'Order 3',
    products: [
      Product(id: '5', name: 'Product 5', price: '8', quantity: '4'),
      Product(id: '6', name: 'Product 6', price: '18', quantity: '1'),
    ],
    itemCount: 5,
    aggregatePrice: 50,
  ),
  Order(
    orderId: '4',
    name: 'Order 4',
    products: [
      Product(id: '7', name: 'Product 7', price: '12', quantity: '2'),
      Product(id: '8', name: 'Product 8', price: '22', quantity: '3'),
    ],
    itemCount: 5,
    aggregatePrice: 100,
  ),
  Order(
    orderId: '5',
    name: 'Order 5',
    products: [
      Product(id: '9', name: 'Product 9', price: '7', quantity: '1'),
      Product(id: '10', name: 'Product 10', price: '30', quantity: '2'),
    ],
    itemCount: 3,
    aggregatePrice: 67,
  ),
];
