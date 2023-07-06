import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:flutter/material.dart' as material;

class PlatformTheme {
  /// Property contains the [fluentTheme]
  final fluent.FluentThemeData? fluentTheme;

  /// Property contains the [materialTheme]
  final material.ThemeData? materialTheme;

  /// Object class that provides platform-specific UI theme data.
  PlatformTheme({
    required this.fluentTheme,
    required this.materialTheme,
  });
}
