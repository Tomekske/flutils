import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextTheme {
  /// This constructor prevents instantiation and extension.
  TextTheme._();

  /// White text with font sizes between 0 and 100
  /// Example: TextTheme.white[20]
  static List<TextStyle> white = List<TextStyle>.generate(
    100,
    (size) => GoogleFonts.poppins(
      color: Colors.white,
      fontSize: size.toDouble(),
    ),
  );

  /// White bold text with font sizes between 0 and 100
  /// Example: TextTheme.whiteBold[20]
  static List<TextStyle> whiteBold = List<TextStyle>.generate(
    100,
    (size) => GoogleFonts.poppins(
      color: Colors.white,
      fontSize: size.toDouble(),
      fontWeight: FontWeight.bold,
    ),
  );

  /// Grey[300] text with font sizes between 0 and 100
  /// Example: TextTheme.grey[20]
  static List<TextStyle> grey = List<TextStyle>.generate(
    100,
    (size) => GoogleFonts.poppins(
      color: Colors.grey[300],
      fontSize: size.toDouble(),
    ),
  );

  /// Grey[300] bold text with font sizes between 0 and 100
  /// Example: TextTheme.greyBold[20]
  static List<TextStyle> greyBold = List<TextStyle>.generate(
    100,
    (size) => GoogleFonts.poppins(
      color: Colors.grey[300],
      fontSize: size.toDouble(),
      fontWeight: FontWeight.bold,
    ),
  );
}
