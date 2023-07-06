import 'package:flutter/material.dart';

class MaterialPlatform extends StatelessWidget {
  /// Whether to show the debug banner.
  bool? debugShowCheckedModeBanner = false;

  /// The application's [theme].
  ThemeData? theme;

  /// The application's [routes].
  Map<String, Widget Function(BuildContext)> routes;

  /// A class that provides platform-specific Material UI components.
  MaterialPlatform({
    this.debugShowCheckedModeBanner,
    this.theme,
    required this.routes,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: debugShowCheckedModeBanner ?? false,
      theme: theme,
      routes: routes,
    );
  }
}
