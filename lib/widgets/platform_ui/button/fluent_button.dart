import 'package:fluent_ui/fluent_ui.dart';

class FluentButton extends StatelessWidget {
  /// The [text] to display inside the button.
  final String text;

  /// The [onPressed] callback.
  final VoidCallback onPressed;

  /// A button that looks like a Fluent UI button.
  FluentButton({
    required this.text,
    required this.onPressed,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Button(
      onPressed: () => onPressed(),
      child: Text(text),
    );
  }
}
