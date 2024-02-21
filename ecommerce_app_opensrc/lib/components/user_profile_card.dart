import 'package:flutter/material.dart';
import 'package:ecommerce_app_opensrc/models/user_model.dart';

class UserProfileCard extends StatelessWidget {
  final User user;

  const UserProfileCard({super.key, required this.user});

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
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 14, 0),
        child: Row(
          children: [
            const Column(
              children: [
                Text(
                  "Name:",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Email Id:",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  user.username,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  user.email,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  user.phoneNumber,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
