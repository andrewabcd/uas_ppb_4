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
          children: [
            const SizedBox(height: 25),
            // Shop Name
            Text(
              "CHEF COMPANION",
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
            // Title
            Text(
              "THE TASTE ALL OF INDONESIAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),
            // subtitle
            Text(
              "Feel The Taste Of The Most Popular Indonesian Food",
              style: TextStyle(
                color: Colors.grey[300],
                height: 2,
              ),
            ),
            const SizedBox(height: 25),
            // get started button
            MyButton(
              text: "Get Started",
              onTap: () {
                //go to menu page
                Navigator.pushNamed(context, '/menuscreen');
              },
            )
          ],
        ),
      ),
    );
  }
}
