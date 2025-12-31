import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFontStyles {
  static TextStyle fontSize12Weight400WithGreenColor = GoogleFonts.poppins(
    color: Color(0xff53B175),
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 3,
  );
  static TextStyle fontSize14Weight600WithGreyColor = GoogleFonts.poppins(
    fontSize: 14,
    color: Color(0xff7C7C7C),
    fontWeight: FontWeight.w600,
  );

  static TextStyle fontSize24Weight600WithColorBlack = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Color(0xff181725),
  );
  static TextStyle fontSize16Weight600WithColorGreen = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xff53B175),
  );
  static TextStyle fontSize16Weight400WithColorBlack = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: Color(0xff181725),
  );
}
