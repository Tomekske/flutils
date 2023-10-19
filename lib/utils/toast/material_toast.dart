import 'package:flutils/app_theme.dart';
import 'package:flutter/material.dart';

/// A toast that looks like a Material toast.
class MaterialToast {
  /// Property contains the build [context]
  BuildContext context;

  /// A toast that looks like a Material toast.
  MaterialToast(this.context);

  /// Shows a info [message]
  void info(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: AppTheme.textTheme.white[19],
        ),
        backgroundColor: Theme.of(context).canvasColor,
      ),
    );
  }

  /// Shows a success [message]
  void success(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: AppTheme.textTheme.white[19],
        ),
        backgroundColor: Colors.green,
      ),
    );
  }

  /// Shows a warning [message]
  void warning(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: AppTheme.textTheme.white[19],
        ),
        backgroundColor: Colors.orange,
      ),
    );
  }

  /// Shows an error [message]
  void error(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: AppTheme.textTheme.white[19],
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
