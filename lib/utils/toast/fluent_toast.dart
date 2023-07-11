import 'package:fluent_ui/fluent_ui.dart';

/// A toast that looks like a Fluent UI toast.
class FluentToast {
  /// Property contains the build [context]
  BuildContext context;

  /// A toast that looks like a Fluent UI toast.
  FluentToast(this.context);

  /// Shows a info [message]
  void info(String message) {
    showSnackbar(
      context,
      InfoBar(
        title: Text('Info'),
        content: Text(message),
        severity: InfoBarSeverity.info,
      ),
      duration: Duration(seconds: 4),
      alignment: Alignment.bottomRight,
    );
  }

  /// Shows a success [message]
  void success(String message) {
    showSnackbar(
      context,
      InfoBar(
        title: Text('Success'),
        content: Text(message),
        severity: InfoBarSeverity.success,
      ),
      duration: Duration(seconds: 4),
      alignment: Alignment.bottomRight,
    );
  }

  /// Shows a warning [message]
  void warning(String message) {
    showSnackbar(
      context,
      InfoBar(
        title: Text('Warning'),
        content: Text(message),
        severity: InfoBarSeverity.warning,
      ),
      duration: Duration(seconds: 4),
      alignment: Alignment.bottomRight,
    );
  }

  /// Shows an error [message]
  void error(String message) {
    showSnackbar(
      context,
      InfoBar(
        title: Text('Error'),
        content: Text(message),
        severity: InfoBarSeverity.error,
      ),
      duration: Duration(seconds: 4),
      alignment: Alignment.bottomRight,
    );
  }
}
