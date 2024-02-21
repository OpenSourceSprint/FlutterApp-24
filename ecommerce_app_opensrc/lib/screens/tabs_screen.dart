import 'package:ecommerce_app_opensrc/screens/orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app_opensrc/models/user_model.dart';
import 'package:ecommerce_app_opensrc/screens/user_about_screen.dart';
import 'package:ecommerce_app_opensrc/screens/products_grid_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const ProductsGridScreen(),
    const OrdersScreen(),
    AboutUserPage(
      currUser: User(
        email: 'test@test.com',
        phoneNumber: '9999999999',
        username: 'ABC',
        orders: [],
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_on),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cases_rounded),
            label: 'Orders',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        backgroundColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
