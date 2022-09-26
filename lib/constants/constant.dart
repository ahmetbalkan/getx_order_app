import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class Constants {
  ColorsTheme ct = ColorsTheme();
  TextStyle quicksantMainColor(double size) {
    return GoogleFonts.oswald(
        textStyle: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: size,
      color: ct.mainColor,
    ));
  }

  TextStyle quicksantBlackColor(double size) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: size,
      color: ct.mainColor,
    );
  }

  TextStyle quicksantMainColorBold(double size) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: size,
      color: ct.mainColor,
    );
  }

  TextStyle quicksantwhite(double size) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: size,
      color: Colors.white,
    );
  }

  TextStyle quicksantGrey(double size) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: size,
      color: Colors.black87,
    );
  }
}
