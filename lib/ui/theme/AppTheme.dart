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
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(16),
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xffE6E15A), width: AppTheme.borderWidth, style: BorderStyle.solid),
        borderRadius: BorderRadius.zero,
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xffB00020), width: AppTheme.borderWidth, style: BorderStyle.solid),
        borderRadius: BorderRadius.zero,
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xffB00020), width: AppTheme.borderWidth, style: BorderStyle.solid),
        borderRadius: BorderRadius.zero,
      ),
      filled: true,
      fillColor: Color(0xffEDEDED),
    ),
    textTheme: TextTheme(button: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
    cardColor: Colors.white,
    bottomAppBarColor: Color(0xff505050),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static const Color backgroundWaterMarkColor = Color(0xff606060);

  static const double spacing = 42;
  static const double headlineSpacing = 32;
  static const double formElementSpacing = 20;
  static const double labelSpacing = 8;

  static const double cardWidth = 360;

  static const double borderWidth = 2;
}
