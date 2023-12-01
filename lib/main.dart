import 'package:chef_companion/pages/menu_screen.dart';
import 'package:flutter/material.dart';
import 'pages/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroScreen(),
      routes: {
        '/introscreen': (context) => const IntroScreen(),
        '/menuscreen': (context) => const MenuScreen(),
      },
    );
  }
}
