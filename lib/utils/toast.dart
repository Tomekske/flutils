import 'package:flutter/material.dart';
import 'package:utils/theme/app_theme.dart' as AppTheme;

/// This class is an abstraction for using the snackbar
class Toast {
  /// Property contains the build [context]
  BuildContext context;

  Toast(this.context);

  /// Displays a snackbar with a neutral background color with a given [message]
  void success(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: AppTheme.TextTheme.white19,
        ),
        backgroundColor: Theme.of(context).canvasColor,
      ),
    );
  }

  /// Displays a snackbar with a red background color with a given [message]
  void fail(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: AppTheme.TextTheme.white19,
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
