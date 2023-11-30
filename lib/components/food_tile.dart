import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTile  extends StatefulWidget {
  final Food food;
  const FoodTile ({
    super.key,
    required this.food,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context)
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20)
      ),
      margin: const EdgeInsets.only(left: 25),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //image
      )
    ),
  ),
}

class _FoodTile State extends State<FoodTile > {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}