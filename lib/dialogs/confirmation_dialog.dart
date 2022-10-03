import 'package:flutter/material.dart';
import 'package:utils/theme/app_theme.dart' as AppTheme;

/// Confirmation dialog class
class ConfirmationDialog {
  /// Property to set the [title] of the dialog
  final String title;

  /// Property to set the [message] of the dialog
  final String message;

  /// [confirmationText] shown on the content dialog
  final String confirmationText;

  /// Property containing a callback with the a [confirmationEvent]
  final Function() confirmationEvent;

  /// Property containing a callback with a [cancelEvent]
  final Function()? cancelEvent;

  /// Confirmation dialog class
  ConfirmationDialog({
    required this.title,
    required this.message,
    required this.confirmationText,
    required this.confirmationEvent,
    this.cancelEvent,
  });

  Future<Future<Object?>> openDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              title,
            ),
            content: Text(
              message,
            ),
            actions: [
              TextButton(
                  child: Text(
                    "Cancel",
                    style: AppTheme.TextTheme.white14,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();

                    // Null aware method call
                    cancelEvent?.call();
                  }),
              TextButton(
                onPressed: confirmationEvent,
                child: Text(
                  confirmationText,
                  style: AppTheme.TextTheme.white14,
                ),
              ),
            ],
          );
        });
  }
}
