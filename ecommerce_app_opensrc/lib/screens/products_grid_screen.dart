import 'package:ecommerce_app_opensrc/screens/carts_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app_opensrc/data/dummy_products.dart';
import 'package:ecommerce_app_opensrc/models/product_model.dart';
import 'package:ecommerce_app_opensrc/screens/landing_screen.dart';
import 'package:ecommerce_app_opensrc/components/product_grid_item.dart';
import 'package:ecommerce_app_opensrc/components/add_product_modal.dart';

class ProductsGridScreen extends StatefulWidget {
  const ProductsGridScreen({super.key});

  @override
  State<ProductsGridScreen> createState() => _ProductsGridScreenState();
}

class _ProductsGridScreenState extends State<ProductsGridScreen> {
  late List<Product> products;

  @override
  void initState() {
    super.initState();
    products = dummyProducts;
  }

  void _addProduct(Product product) {
    products.add(product);
  }

  void _showAddProductModal(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return AddProductModal(
          onProductAdded: _addProduct,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Products Grid'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.logout,
            ),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LandingPage()),
                (route) => false,
              );
            },
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const CartScreen()),
              (route) => false,
            );
          },
          icon: const Icon(Icons.shopping_cart),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductGridItem(
              product: products[index],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddProductModal(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
