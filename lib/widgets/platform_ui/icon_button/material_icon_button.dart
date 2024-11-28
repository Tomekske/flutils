import 'package:flutter/material.dart';

class MaterialIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;

  const MaterialIconButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: onPressed,
    );
  }
}
