import 'package:flutter/material.dart';

class MenuType extends StatelessWidget {
  final String menuType;
  final bool isSelected;
  final VoidCallback onTap;

  MenuType({
    required this.menuType,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          menuType,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.orange : Colors.white,
          ),
        ),
      ),
    );

    /* // TO DO : search the logic.
    if (menuType == 'Drink') {
      return const Text('Drink');
    } else {
      return const Text('Eat');
    }*/
  }
}
