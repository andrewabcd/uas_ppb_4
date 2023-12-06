import 'package:flutter/material.dart';
import 'package:flutter_chefcompanion/components/drawer.dart';
import 'package:flutter_chefcompanion/components/product_tile.dart';
import 'package:flutter_chefcompanion/models/shop.dart';
import 'package:provider/provider.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.primary,
          title: const Text("Menu Screen"),
        ),
        drawer: const CCDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [
            const SizedBox(height: 25),
            Center(
              child: Text(
                "MENU",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return CCProductTile(product: product);
                },
              ),
            ),
          ],
        ));
  }
}
