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
      iconTheme: IconThemeData(color: blackColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
      selectedLabelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      unselectedLabelStyle:
          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      subtitle1: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: blackColor),
      subtitle2: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w400, color: blackColor),
    ),
  );
  static ThemeData darkMode = ThemeData();
}
