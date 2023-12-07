import 'package:chef_companion/components/button.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.restaurant_menu,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 10),

            const Text("Chef Companion",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            ),

            const SizedBox(height: 10),

            Text("Quality Meals",
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            ),

            const SizedBox(height: 25),

            Button(
              onTap: () => Navigator.pushNamed(context, '/menu_screen'),
              child: const Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}