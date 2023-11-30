import 'package:chef_companion/components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),

            Text(
              "Chef Companion",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 25),

            // Icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('assets/image/Icons/hotcoffee.png/'),
            ),
            const SizedBox(height: 25),

            Text(
              "FULL YOUR STOMACH",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Spend your money, your time, your life, but dont spend your food",
              style: TextStyle(
                color: Colors.grey,
                height: 2,
              ),
            ),
            const SizedBox(height: 25),
            MyButton(text: "Get Started")
          ],
        ),
      ),
    );
  }
}
