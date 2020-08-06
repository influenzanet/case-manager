import 'package:flutter/material.dart';

class AppTheme {
  static final themeData = ThemeData(
    fontFamily: "Lato",
    primaryColor: Color(0xffE6E15A),
    primaryColorBrightness: Brightness.light,
    canvasColor: Color(0xff646464),
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: Color(0xFF0091AC),
      textTheme: TextTheme(
        headline6: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        button: TextStyle(fontSize: 24, color: Colors.white),
        caption: TextStyle(fontSize: 18, color: Color(0xffCBCBCB)),
      ),
    ),
    textTheme: TextTheme(button: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
    cardColor: Colors.white,
    bottomAppBarColor: Color(0xff505050),
    // This makes the visual density adapt to the platform that you run
    // the app on. For desktop platforms, the controls will be smaller and
    // closer together (more dense) than on mobile platforms.
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static const double spacing = 42;
  static const double headlineSpacing = 32;
  static const double formElementSpacing = 20;
  static const double labelSpacing = 8;

  static const double formWidth = 360;

  static const double borderWidth = 2;
}
