import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  const MenuTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
          ),
          // TO DO: Insert image
          child: Image.asset(''),
      ),
    );
  }
}
