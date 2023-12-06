import 'package:flutter/material.dart';

class CCListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;

  const CCListTile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(text),
      onTap: onTap,
    );
  }
}
