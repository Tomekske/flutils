import 'package:fluent_ui/fluent_ui.dart';

class FluentIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;

  FluentIconButton({
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
