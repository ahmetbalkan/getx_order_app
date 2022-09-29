import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class Constants {
  ColorsTheme ct = ColorsTheme();
  TextStyle quicksantMainColor(double size) {
    return GoogleFonts.kanit(
        textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: size,
      color: ct.mainColor,
    ));
  }

  TextStyle quicksantBlackColor(double size) {
    return GoogleFonts.kanit(
        textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: size,
      color: Colors.black,
    ));
  }

  TextStyle quicksantBlackThinColor(double size) {
    return GoogleFonts.kanit(
        textStyle: TextStyle(
      fontWeight: FontWeight.w200,
      fontSize: size,
      color: Colors.black,
    ));
  }

  TextStyle quicksantMainColorBold(double size) {
    return GoogleFonts.kanit(
        textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: size,
      color: ct.mainColor,
    ));
  }

  TextStyle quicksantwhite(double size) {
    return GoogleFonts.kanit(
        textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: size,
      color: Colors.white,
    ));
  }

  TextStyle quicksantGrey(double size) {
    return GoogleFonts.kanit(
        textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: size,
      color: ct.mainColor,
    ));
  }
}
