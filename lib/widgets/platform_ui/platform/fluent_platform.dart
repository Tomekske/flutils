// import 'package:assistant/constants/configured_routes.dart';
// import 'package:assistant/presentation/pages/home_page.dart';
// import 'package:assistant/presentation/pages/loading_page.dart';
import 'package:fluent_ui/fluent_ui.dart';

class FluentPlatform extends StatelessWidget {
  /// Whether to show the debug banner.
  bool? debugShowCheckedModeBanner = false;

  /// The application's [theme].
  FluentThemeData? theme;

  /// The application's [routes].
  Map<String, Widget Function(BuildContext)> routes;

  /// A class that provides platform-specific Fluent UI components.
  FluentPlatform({
    this.debugShowCheckedModeBanner,
    this.theme,
    required this.routes,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      routes: routes,
    );
  }
}
