import 'package:ecommerce_app_opensrc/models/product_model.dart';
import 'package:flutter/material.dart';

class CartListItem extends StatelessWidget {
  final Product product;
  final Function increaseQuantity;
  final Function decreaseQuantity;

  const CartListItem({
    super.key,
    required this.product,
    required this.increaseQuantity,
    required this.decreaseQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          maxRadius: 50,
          backgroundImage: product.image,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                decreaseQuantity(product.id);
              },
              icon: const Icon(
                Icons.remove_circle_outline_rounded,
                size: 30,
              ),
            ),
            Text(
              product.quantity.toString(),
              style: const TextStyle(fontSize: 20),
            ),
            IconButton(
              onPressed: () {
                increaseQuantity(product.id);
              },
              icon: const Icon(
                Icons.add_circle_outline_rounded,
                size: 30,
              ),
            ),
          ],
        ),
        title: Text(
          product.name.toString(),
          style: const TextStyle(fontSize: 22, color: Colors.white),
        ),
        subtitle: Text('Price: ₹${product.price}'),
      ),
    );
  }
}
