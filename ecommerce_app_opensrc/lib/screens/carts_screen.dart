import 'package:ecommerce_app_opensrc/components/cart_list_item.dart';
import 'package:ecommerce_app_opensrc/data/dummy_products.dart';
import 'package:ecommerce_app_opensrc/models/product_model.dart';
import 'package:ecommerce_app_opensrc/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late List<Product> _products;

  @override
  void initState() {
    super.initState();
    _products = dummyProducts;
  }

  void increaseQuantity(String productID) {
    setState(() {
      Product product =
          _products.firstWhere((product) => product.id == productID);
      product.quantity;
    });
  }

  void decreaseQuantity(String productID) {
    setState(() {
      Product product =
          _products.firstWhere((product) => product.id == productID);
      product.quantity;
    });
  }

  String getCartTotalPrice() {
    String totalPrice = "";
    for (Product product in _products) {
      totalPrice += product.price + product.quantity;
    }
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Cart'),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TabsScreen(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                final product = _products[index];

                return CartListItem(
                  key: ValueKey(index),
                  product: product,
                  increaseQuantity: increaseQuantity,
                  decreaseQuantity: decreaseQuantity,
                );
              },
            ),
          ),
          const Divider(),
          _CartTotal(totalPrice: getCartTotalPrice()),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  final String totalPrice;

  const _CartTotal({Key? key, required this.totalPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Total: ₹ ${totalPrice.substring(0, 8)}",
            style: const TextStyle(fontSize: 25, color: Colors.white),
          ),
          const SizedBox(width: 15),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "BUY",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
