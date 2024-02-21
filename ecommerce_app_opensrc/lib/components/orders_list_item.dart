import 'package:flutter/material.dart';
import 'package:ecommerce_app_opensrc/models/order_model.dart';

class OrderListItem extends StatelessWidget {
  final Order order;

  const OrderListItem({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(order.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Item Count: ${order.itemCount}'),
            Text('Price: ₹ ${order.aggregatePrice.toStringAsFixed(2)}'),
          ],
        ),
        leading: const Icon(Icons.shopping_bag),
      ),
    );
  }
}
