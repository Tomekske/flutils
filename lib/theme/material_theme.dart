import 'package:flutter/material.dart';

class MaterialTheme {
  static ThemeData? dark = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF272727),
    ),
    scaffoldBackgroundColor: Color(0xFF121212),
    backgroundColor: Color(0xFF121212),
    colorScheme: ColorScheme.dark().copyWith(
      primary: Colors.red,
      secondary: Colors.red,
    ),
    chipTheme: ChipThemeData(
      backgroundColor: Colors.red,
    ),
    checkboxTheme: CheckboxThemeData(
      side: BorderSide(color: Colors.white),
      fillColor: MaterialStateProperty.all(Colors.red),
    ),
    tabBarTheme: TabBarTheme(
      indicator: ShapeDecoration(
        shape: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    fontFamily: 'Poppins',
  );
}
