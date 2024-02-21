import 'package:flutter/material.dart';
import 'package:ecommerce_app_opensrc/models/product_model.dart';
import 'package:ecommerce_app_opensrc/screens/product_detail_screen.dart';

class ProductGridItem extends StatelessWidget {
  final Product product;

  const ProductGridItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(
              product: product,
            ),
          ),
        );
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              product.name,
            ),
            Text(
              product.description ?? "No description.",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
