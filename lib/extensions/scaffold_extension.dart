import 'package:flutter/material.dart';

extension ScaffoldExtension on Scaffold {
  /// Creates a widget that registers an [onWillPop] callback to veto attempts by the user to dismiss the enclosing
  WillPopScope popScope(Future<bool> Function()? onWillPop) => WillPopScope(
        onWillPop: onWillPop,
        child: this,
      );
}
