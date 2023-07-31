import 'dart:io';

import 'package:flutils/utils/toast/fluent_toast.dart';
import 'package:flutils/utils/toast/material_toast.dart';
import 'package:flutter/widgets.dart';

/// An facade class that contains the toast methods for the Fluent UI and Material toast.
/// ```dart
/// import 'dart:io' show Platform;
///
/// void main() {
///   Map<String, String> envVars = Platform.environment;
///   print(envVars['PATH']);
/// }
/// ```
class Toast {
  /// Property contains the build [context]
  BuildContext context;

  /// An facade class that contains the toast methods for the Fluent UI and Material toast.
  /// ```dart
  /// import 'package:utils/utils.dart';
  ///
  /// Toast(context).info("Info message");
  /// Toast(context).success("Success message");
  /// Toast(context).warning("Warning message");
  /// Toast(context).error("Error message");
  /// ```
  Toast(this.context);

  /// Shows a info [message]
  /// ```dart
  /// import 'package:utils/utils.dart';
  ///
  /// Toast(context).info("Info message");
  /// ```
  void info(String message) {
    if (Platform.isAndroid) {
      return MaterialToast(context).info(message);
    }

    return FluentToast(context).info(message);
  }

  /// Shows a success [message]
  /// ```dart
  /// import 'package:utils/utils.dart';
  ///
  /// Toast(context).success("Success message");
  /// ```
  void success(String message) {
    if (Platform.isAndroid) {
      return MaterialToast(context).success(message);
    }

    return FluentToast(context).success(message);
  }

  /// Shows a warning [message]
  /// ```dart
  /// import 'package:utils/utils.dart';
  ///
  /// Toast(context).warning("Warning message");
  /// ```
  void warning(String message) {
    if (Platform.isAndroid) {
      return MaterialToast(context).warning(message);
    }

    return FluentToast(context).warning(message);
  }

  /// Shows an error [message]
  /// ```dart
  /// import 'package:utils/utils.dart';
  ///
  /// Toast(context).error("Error message");
  /// ```
  void error(String message) {
    if (Platform.isAndroid) {
      return MaterialToast(context).error(message);
    }

    return FluentToast(context).error(message);
  }
}
