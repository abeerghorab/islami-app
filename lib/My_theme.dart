import 'package:flutter/material.dart';

class MyThemeData {
  static Color primartLight = Color(0xffB7935f);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Colors.white;
  static ThemeData LightMode = ThemeData(
      primaryColor: primartLight,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // iconTheme: IconThemeData(color: whiteColor),
      ),
      textTheme: TextTheme(
          headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: whiteColor,
      )));
  static ThemeData darkMode = ThemeData();
}
