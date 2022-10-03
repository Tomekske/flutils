import 'package:flutter/widgets.dart';

extension WidgetExtension on Widget {
  Widget center() {
    /// Center any widget
    return Center(
      child: this,
    );
  }
}
