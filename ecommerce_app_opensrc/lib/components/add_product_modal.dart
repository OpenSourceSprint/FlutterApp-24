import 'package:flutter/material.dart';
import 'package:ecommerce_app_opensrc/models/product_model.dart';

class AddProductModal extends StatelessWidget {
  final Function(Product) onProductAdded;

  const AddProductModal({super.key, required this.onProductAdded});

  @override
  Widget build(BuildContext context) {
    String productName = '';
    String productDescription = '';
    double price = 0.0;

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            'Add New Product',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Product Name'),
            onChanged: (value) {
              productName = value;
            },
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Price'),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              price = double.tryParse(value) ?? 0.0;
            },
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Description'),
            onChanged: (value) {
              productDescription = value;
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              final newProduct = Product(
                id: '7',
                quantity: '2',
                name: productName,
                price: price.toString(),
                description: productDescription,
              );
              onProductAdded(newProduct);
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
            child: const Text('Add Product'),
          ),
        ],
      ),
    );
  }
}
