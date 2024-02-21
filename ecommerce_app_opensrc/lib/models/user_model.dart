import 'package:ecommerce_app_opensrc/models/product_model.dart';

class User {
  final String email;
  final String username;
  final String phoneNumber;
  List<Product> orders;

  User({
    required this.email,
    required this.username,
    required this.phoneNumber,
    required this.orders,
  });
}
