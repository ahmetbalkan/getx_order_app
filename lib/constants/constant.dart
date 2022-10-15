import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../locator.dart';
import 'colors.dart';

class Constants {
  var _ct = locator.get<ColorsTheme>();

  TextStyle quicksantMainColor(double size) {
    return GoogleFonts.kanit(
        textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: size,
      color: _ct.mainColor,
    ));
  }

  void Snackbar() {
    Get.snackbar(
      "Adres izni Verilmedi",
      "",
      borderColor: Colors.red,
      borderWidth: 3,
      messageText: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Adres izni alınmadan malesef yeni adres eklemesi yapamassınız.",
            style: quicksantBlackThinColor(15),
          ),
          Text(
            "İzin vermek için tıklayınız.",
            style: quicksantBlackColor(15),
          ),
        ],
      ),
      icon: Icon(
        Icons.location_off,
        size: 40,
        color: Colors.red,
      ),
      duration: Duration(minutes: 15),
      backgroundColor: _ct.backgroundColor,
      onTap: (snack) async {
        await Geolocator.openAppSettings();
      },
    );
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
      color: _ct.mainColor,
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
      color: _ct.mainColor,
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
      color: _ct.mainColor,
    ));
  }

  String mapkey = "AIzaSyAF1s87WIEO74ifHGNeurfF5VCmVDrHX5w";
}
