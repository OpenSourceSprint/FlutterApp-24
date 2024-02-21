import 'package:ecommerce_app_opensrc/screens/carts_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app_opensrc/models/user_model.dart';
import 'package:ecommerce_app_opensrc/screens/landing_screen.dart';
import 'package:ecommerce_app_opensrc/components/user_profile_card.dart';
import 'package:ecommerce_app_opensrc/components/user_cart_orders_card.dart';

class AboutUserPage extends StatelessWidget {
  final User currUser;

  const AboutUserPage({Key? key, required this.currUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('About'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.logout,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LandingPage(),
                ),
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
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: UserProfileCard(user: currUser),
          ),
          const Expanded(
            flex: 3,
            child: UserCartOrdersCard(),
          ),
        ],
      ),
    );
  }
}
