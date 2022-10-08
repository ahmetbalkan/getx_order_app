import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

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

  Column loadingWidget(double size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: size,
              height: size,
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Lottie.asset('assets/wait.json'),
            ),
            Container(
              width: size,
              height: size,
              child: Center(
                child: Image.asset(
                  "assets/logo-white.png",
                  width: 80,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ],
        ),
        Text(
          "Yükleniyor.",
          style: quicksantMainColorBold(18),
        )
      ],
    );
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

  TextStyle quicksantMainThinColor(double size) {
    return GoogleFonts.kanit(
        textStyle: TextStyle(
      fontWeight: FontWeight.w200,
      fontSize: size,
      color: ct.mainColor,
    ));
  }

  TextStyle quicksantRedColor(double size) {
    return GoogleFonts.kanit(
        textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: size,
      color: Colors.red,
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

  String mapkey = "AIzaSyAF1s87WIEO74ifHGNeurfF5VCmVDrHX5w";
}
