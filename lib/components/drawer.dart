import 'package:chef_companion/components/list_tile.dart';
import 'package:flutter/material.dart';

class CCDrawer extends StatelessWidget {
  const CCDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.restaurant_menu,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              CCListTile(
                text: "Menu",
                icon: Icons.restaurant,
                onTap: () => Navigator.pop(context),
              ),
              CCListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/cart_screen');
                },
              ),
              CCListTile(
                text: "Feedbacks",
                icon: Icons.note,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/rating_screen');
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: CCListTile(
              text: "Exit",
              icon: Icons.exit_to_app,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/intro_screen', (route) => false),
            ),
          ),
        ],
      ),
    );
  }
}
