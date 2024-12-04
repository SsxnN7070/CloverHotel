import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KStyle {
  static Color cPrimary = const Color(0xFF6FAB49);
  static Color cAccent = const Color(0xFFEB9131);
  static Color cWhite = const Color(0xFFFFFFFF);
  static Color cBlack = const Color(0xFF000000);
  static Color cGrey = const Color(0xFF959595);
  static Color cF6Grey = const Color(0xFFF6F6F6);
  static Color c95Grey = const Color(0xFF959595);
  static Color c8DGrey = const Color(0xFF8D8D8D);
  static Color cRed = const Color(0xFFFF0000);

  static TextStyle t12PTextStyle = GoogleFonts.poppins(
    fontSize: 12,
    color: cPrimary,
  );

  static TextStyle t13PTextStyle = GoogleFonts.poppins(
    fontSize: 13,
    color: cPrimary,
  );

  static TextStyle t14PTextStyle = GoogleFonts.poppins(
    fontSize: 14,
    color: cPrimary,
  );

  static TextStyle t16PTextStyle = GoogleFonts.poppins(
    fontSize: 16,
    color: cPrimary,
  );

  static TextStyle t18PTextStyle = GoogleFonts.poppins(
    fontSize: 18,
    color: cPrimary,
  );

  static TextStyle t20PTextStyle = GoogleFonts.poppins(
    fontSize: 20,
    color: cBlack,
  );
  static TextStyle t14BTextStyle = GoogleFonts.poppins(
    fontSize: 14,
    color: cBlack,
  );

  static TextStyle t14WTextStyle = GoogleFonts.poppins(
    fontSize: 14,
    color: cWhite,
  );

  static TextStyle t24PTextStyle = GoogleFonts.poppins(
    fontSize: 24,
    color: cPrimary,
  );

  static TextStyle t40IBMTextStyle = GoogleFonts.ibmPlexSans(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: cWhite,
  );

  static TextStyle t32HTextStyle = GoogleFonts.hurricane(
    fontSize: 32,
    color: const Color(0xFFA1A1A1),
  );
}
