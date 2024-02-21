import 'package:ecommerce_app_opensrc/components/orders_list_item.dart';
import 'package:ecommerce_app_opensrc/data/dummy_orders.dart';
import 'package:ecommerce_app_opensrc/screens/carts_screen.dart';
import 'package:ecommerce_app_opensrc/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app_opensrc/models/order_model.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  late List<Order> orders;

  @override
  void initState() {
    super.initState();
    orders = dummyOrders;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Orders'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
                (route) => false,
              );
            },
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const LandingPage()),
              (route) => false,
            );
          },
          icon: const Icon(Icons.shopping_cart),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 25,
                itemBuilder: (context, index) {
                  return OrderListItem(order: orders[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
