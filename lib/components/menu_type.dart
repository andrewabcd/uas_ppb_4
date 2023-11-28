import 'package:flutter/material.dart';

class MenuType extends StatelessWidget {
  final String menuType;

  MenuType({
    required this.menuType,
  });

  @override
  Widget build(BuildContext context) {
    // TO DO : search the logic.
    if (menuType == 'Drink') {
      return const Text('Drink');
    } else {
      return const Text('Eat');
    }
  }
}
