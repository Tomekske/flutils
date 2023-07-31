import 'package:flutils/app_theme.dart' as AppTheme;
import 'package:flutils/extensions.dart';
import 'package:flutter/material.dart';

/// Displays a widget and message centered on a page
class Message extends StatelessWidget {
  /// Property contains a [message] which is displayed in the center of the screen
  final String message;

  /// Property contains a [widget] which is displayed in the center of the screen
  final Widget? widget;

  /// Property allows the user to pass a text [style] other than the default one
  TextStyle? style;

  Message({required this.message, this.widget, this.style}) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (widget != null) ...[
          widget!,
        ],
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
          child: Text(
            message,
            style: style ?? AppTheme.TextTheme.whiteBold[30],
          ),
        )
      ],
    ).center();
  }
}
