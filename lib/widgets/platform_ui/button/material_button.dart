import 'package:flutter/material.dart';

class MaterialTextButton extends StatelessWidget {
  /// The [text] to display inside the button.
  final String text;

  /// The [onPressed] callback.
  final VoidCallback onPressed;

  /// A button that looks like a Material button.
  MaterialTextButton({
    required this.text,
    required this.onPressed,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed(),
      child: Text(text),
    );
  }
}
