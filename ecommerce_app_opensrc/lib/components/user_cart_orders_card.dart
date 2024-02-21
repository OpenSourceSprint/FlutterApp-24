import 'package:flutter/material.dart';

class UserCartOrdersCard extends StatelessWidget {
  const UserCartOrdersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: const BorderSide(
          width: 4,
          color: Colors.black,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            "User Orders and Cart",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
