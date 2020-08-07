import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final themeData = ThemeData(
    fontFamily: "Lato",
    primaryColor: Color(0xffE6E15A),
    primaryColorBrightness: Brightness.light,
    accentColor: Color(0xff008ca5),
    accentColorBrightness: Brightness.dark,
    canvasColor: Colors.white,
    cursorColor: cursorColor,
    textSelectionHandleColor: cursorColor,
    textSelectionColor: Color(0xff00C1E5),
    scaffoldBackgroundColor: Color(0xff646464),
    cupertinoOverrideTheme: CupertinoThemeData(
      primaryColor: cursorColor,
    ),
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
      iconTheme: IconThemeData(color: Colors.white, size: 32),
      actionsIconTheme: IconThemeData(color: Color(0xff006A7E)),
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

  static const double drawerBreakPoint = 800;

  static const Color backgroundWaterMarkColor = Color(0xff606060);
  static const Color cursorColor = Color(0xff008CA5);

  static const double spacing = 42;
  static const double headlineSpacing = 32;
  static const double formElementSpacing = 20;
  static const double labelSpacing = 8;

  static const double actionButtonPadding = 12;
  static const double drawerLeftPadding = 75;
  static const double footerImageBottomPadding = 16;

  static const double cardWidth = 360;

  static const double footerImageHeight = 36;

  static const double borderWidth = 2;
}
