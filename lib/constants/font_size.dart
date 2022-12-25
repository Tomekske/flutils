import 'package:flutter/material.dart';
import 'package:utils/app_theme.dart' as AppTheme;

/// This class contains frequently used font sizes
/// Based on https://www.learnui.design/blog/android-material-design-font-size-guidelines.html
class FontSize {
  /// The [pageTitle] test style: 18px -> 24sp
  static TextStyle pageTile = AppTheme.TextTheme.white[18];

  /// The [pagePictureTile] test style: 40px bold
  static TextStyle pagePictureTile = AppTheme.TextTheme.whiteBold[40];

  /// The [listTile] test style: 11px -> 14sp
  static TextStyle listTile = AppTheme.TextTheme.white[11];

  /// The [menuTile] test style: 11px -> 14sp
  static TextStyle menuTile = AppTheme.TextTheme.whiteBold[11];

  /// The [listItemPrimary] test style: 12px -> 16sp
  static TextStyle listItemPrimary = AppTheme.TextTheme.white[12];

  /// The [listItemSecondary] test style: 11px -> 14sp
  static TextStyle listItemSecondary = AppTheme.TextTheme.white[11];
}
