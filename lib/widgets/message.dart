import 'package:flutter/material.dart';
import 'package:utils/extensions/extensions.dart';
import 'package:utils/theme/app_theme.dart' as AppTheme;

/// Displays a widget and message centered on a page
class Message extends StatelessWidget {
  /// Property contains a [widget] which is displayed in the center of the screen
  final Widget? widget;

  /// Property contains a [message] which is displayed in the center of the screen
  final String message;

  /// Property allows the user to pass a text [style] other than the default one
  TextStyle? style;

  Message({required this.widget, required this.message, this.style}) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (widget != null) ...[widget!],
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
          child: Text(
            message,
            style: style ?? AppTheme.TextTheme.whiteBold30,
          ),
        )
      ],
    ).center();
  }
}
