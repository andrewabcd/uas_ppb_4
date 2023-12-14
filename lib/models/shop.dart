import 'package:chef_companion/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [

    Product(
      name: "Cappucino",
      price: 25.000,
      description: "Nomero Uno",
      imagePath: 'assets/image/Menu/Cappucino.jpg',
    ),

    Product(
      name: "Cocktail",
      price: 45.000,
      description: "You should say completely, Cock...TAILL!!",
      imagePath: 'assets/image/Menu/Cocktail.jpg',
    ),

    Product(
      name: "Dalgona Coffee",
      price: 25.000,
      description: "Dal Gondal Gandul Dalgona",
      imagePath: 'assets/image/Menu/DalgonaCoffee.jpg',
    ),

    Product(
      name: "Kebab",
      price: 25.000,
      description: "It's from Turkey",
      imagePath: 'assets/image/Menu/Kebab.jpg',
    ),

    Product(
      name: "Latte",
      price: 25.000,
      description: "Dont be Latte!",
      imagePath: 'assets/image/Menu/latte.jpg',
    ),

    Product(
      name: "Manggis Juice",
      price: 25.000,
      description: "Kulit manggis kini ada ekstraknya",
      imagePath: 'assets/image/Menu/ManggisJuice.jpg',
    ),

    Product(
      name: "Mango Juice",
      price: 35.000,
      description: "Ketika kamu berjalan ucapkan 'Mango' ",
      imagePath: 'assets/image/Menu/MangoJuice.jpg',
    ),

    Product(
      name: "Nasi Goreng",
      price: 35.000,
      description: "Indonesian's favorite meals",
      imagePath: 'assets/image/Menu/nasgor.jpg',
    ),

    Product(
      name: "Orange Juice",
      price: 30.000,
      description: "O for Orange",
      imagePath: 'assets/image/Menu/OrangeJuice.jpg',
    ),

    Product(
      name: "Steak",
      price: 95.000,
      description: "Meat Lovers only",
      imagePath: 'assets/image/Menu/Steak.jpg',
    ),

    Product(
      name: "Tea",
      price: 15.000,
      description: "Teh buatan Maya",
      imagePath: 'assets/image/Menu/Tea.jpg',
    ),

    Product(
      name: "Watermelon Juice",
      price: 35.000,
      description: "Remind me of Harry Style",
      imagePath: 'assets/image/Menu/WatermelonJuice.jpg',
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