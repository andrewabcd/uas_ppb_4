import 'package:flutter/material.dart';
// pada line 139 masukkan keyword OnTap di Expanded

import 'package:chef_companion/components/button.dart';
import 'package:chef_companion/components/food_tile.dart';
import 'package:chef_companion/models/pricefood.dart';
import 'package:chef_companion/themes/color.dart';

import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
// food menu
  List foodMenu = [
    // Steak
    FoodPrice(
      name: "Steak",
      price: "Rp.50.000",
      imagePath: "assets/image/Menu/Steak.jpg",
      rating: "4.5",
    ),
    // Watermelon Juice
    FoodPrice(
      name: "Watermelon Juice",
      price: "Rp.30.000",
      imagePath: "assets/image/Menu/WatermelonJuice.jpg",
      rating: "3.5",
    ),
    // Nasi Goreng
    FoodPrice(
      name: "Nasi Goreng",
      price: "Rp.12.000",
      imagePath: "assets/image/Menu/nasgor.jpg",
      rating: "5.0",
    ),
    // Cappucino Coffee
    FoodPrice(
      name: "Cappucino Coffee",
      price: "Rp.15.000",
      imagePath: "assets/image/Cappucino.jpg",
      rating: "4.8",
    ),
    // Orange Juice
    FoodPrice(
      name: "Orange Juice",
      price: "Rp.10.000",
      imagePath: "assets/image/Menu/OrangeJuice.jpg/",
      rating: "4.3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Chef Companion Menu',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Banner Promo
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Message Promo
                    Text(
                      'Get 32% Promo',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    // Button Redeem
                    MyButton(
                      text: "Redeem",
                    ),
                  ],
                ),
                // image
                Image.asset(
                  'assets/image/Icons/hotcoffee.png',
                  height: 100,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          //Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                hintText: "Search Here",
              ),
            ),
          ),

          const SizedBox(height: 25),

          //List Menu
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (
                context,
                index,
              ) =>
                  FoodTile(
                food: foodMenu[index],
              ),
            ),
          ),

          const SizedBox(height: 25),

          //Popular Menu
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //image
                    Image.asset(
                      'assets/image/Menu/nasgor.jpg',
                      height: 60,
                    ),

                    const SizedBox(
                      width: 20,
                    ),

                    // name & price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //name
                        Text(
                          'Nasi Goreng',
                          style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //price
                        Text(
                          "\Rp12.000",
                          style: TextStyle(color: Colors.grey[700]),
                        )
                      ],
                    ),
                  ],
                ),
                // hearts
                const Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
