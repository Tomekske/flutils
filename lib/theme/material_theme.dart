import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    textTheme: TextTheme(
      headline1: GoogleFonts.poppins(
        fontSize: 93,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      headline2: GoogleFonts.poppins(
        fontSize: 58,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      headline3: GoogleFonts.poppins(
        fontSize: 46,
        fontWeight: FontWeight.w400,
      ),
      headline4: GoogleFonts.poppins(
        fontSize: 33,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headline5: GoogleFonts.poppins(
        fontSize: 23,
        fontWeight: FontWeight.w400,
      ),
      headline6: GoogleFonts.poppins(
        fontSize: 19,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
      subtitle1: GoogleFonts.poppins(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      ),
      subtitle2: GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      bodyText1: GoogleFonts.poppins(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      bodyText2: GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      button: GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      caption: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      overline: GoogleFonts.poppins(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      ),
    ),
  );
}
