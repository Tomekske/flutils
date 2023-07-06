import 'dart:io';

import 'package:flutter/material.dart';
import 'package:utils/data/enums/input_mode.dart';
import 'package:utils/data/models/platform_theme.dart';
import 'package:utils/widgets/platform_ui/button/fluent_button.dart';
import 'package:utils/widgets/platform_ui/button/material_button.dart';
import 'package:utils/widgets/platform_ui/platform/fluent_platform.dart';
import 'package:utils/widgets/platform_ui/platform/material_platform.dart';
import 'package:utils/widgets/platform_ui/text_box/fluent_text_box.dart';
import 'package:utils/widgets/platform_ui/text_box/material_text_box.dart';

/// A class that provides platform-specific UI components.
class PlatformUI {
  /// Returns the appropriate platform-specific widget based on the current operating system
  /// debugShowCheckedModeBanner: Whether to show the debug banner.
  /// theme: The application's [theme].
  /// routes: The application's [routes].
  static Widget platform({
    PlatformTheme? theme,
    bool? debugShowCheckedModeBanner,
    required Map<String, Widget Function(BuildContext)> routes,
  }) {
    if (Platform.isWindows) {
      return FluentPlatform(
        debugShowCheckedModeBanner: debugShowCheckedModeBanner,
        theme: theme?.fluentTheme,
        routes: routes,
      );
    }

    return MaterialPlatform(
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      theme: theme?.materialTheme,
      routes: routes,
    );
  }

  /// Returns the appropriate platform-specific button widget based on the current operating system
  /// text: The button's text.
  /// onPressed: The button's callback.
  static Widget button(
      {required String text, required VoidCallback onPressed}) {
    if (Platform.isWindows) {
      return FluentButton(
        text: text,
        onPressed: onPressed,
      );
    }

    return MaterialTextButton(
      text: text,
      onPressed: onPressed,
    );
  }

  /// Returns the appropriate platform-specific input box widget based on the current operating system
  /// hint: The input box's hint text.
  /// inputMode: The input box's mode.
  /// controller: The input box's controller.
  /// onSubmit: callback contains the input box's text
  static Widget textBox({
    required String hint,
    required InputMode inputMode,
    required TextEditingController controller,
    Function(String? text)? onSubmit,
  }) {
    if (Platform.isWindows) {
      return FluentTextBox(
        hint: hint,
        controller: controller,
        inputMode: inputMode,
        onSubmit: onSubmit,
      );
    }

    return MaterialTextBox(
      hint: hint,
      controller: controller,
      inputMode: inputMode,
      onSubmit: onSubmit,
    );
  }
}
