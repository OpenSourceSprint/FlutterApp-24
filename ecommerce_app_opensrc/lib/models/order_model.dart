import 'package:ecommerce_app_opensrc/models/product_model.dart';

class Order {
  final String orderId;
  final String name;
  final List<Product> products;
  final int itemCount;
  final int aggregatePrice;

  Order({
    required this.orderId,
    required this.name,
    required this.products,
    required this.itemCount,
    required this.aggregatePrice,
  });
}
