import 'package:flutter/material.dart';

class ColorsTheme {
  Color mainColor = const Color(0xFF31B0FF);
  Color mainColor2 = const Color(0xFF00F1F5);
  Color backgroundColor = const Color(0xFFd4efff);

  MaterialColor materialColorMain = const MaterialColor(
    0xFF31B0FF,
    <int, Color>{
      50: Color(0xFF31B0FF),
      100: Color(0xFF31B0FF),
      200: Color(0xFF31B0FF),
      300: Color(0xFF31B0FF),
      400: Color(0xFF31B0FF),
      500: Color(0xFF31B0FF),
      600: Color(0xFF31B0FF),
      700: Color(0xFF31B0FF),
      800: Color(0xFF31B0FF),
      900: Color(0xFF31B0FF),
    },
  );

  Color listActiveColor = const Color(0xFFe9f8f);
}
