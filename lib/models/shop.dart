import 'package:flutter/material.dart';
import 'package:flutter_chefcompanion/models/product.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [

    Product(
      name: "name",
      price: 25.000,
      description: "description",
    ),

    Product(
      name: "name",
      price: 25.000,
      description: "description",
    ),

    Product(
      name: "name",
      price: 25.000,
      description: "description",
    ),

    Product(
      name: "name",
      price: 25.000,
      description: "description",
    ),
  ];

  List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}