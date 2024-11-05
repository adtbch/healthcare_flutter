import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static TextStyle header(Color color, FontWeight weight) {
    return GoogleFonts.roboto(
      fontSize: 16, // Convert num to double
      color: color,
      fontWeight: weight,
    );
  }

  static TextStyle h1(Color color) {
    return GoogleFonts.poppins(
      fontSize: 45.0,
      color: color,
    );
  }

  static TextStyle subHeader(Color color) {
    return GoogleFonts.openSans(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle body(Color color) {
    return GoogleFonts.roboto(
      fontSize: 18.0,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle h2(Color color) {
    return GoogleFonts.roboto(
      fontSize: 46.0,
      color: color,
      // fontWeight: FontWeight.bold,
    );
  }

  static TextStyle captionSubtitle = GoogleFonts.openSans(
    fontSize: 18.0,
    color: Colors.grey,
  );

  static TextStyle caption(Color color) {
    return GoogleFonts.roboto(
        fontSize: 14.0, color: color, fontWeight: FontWeight.bold);
  }
}
