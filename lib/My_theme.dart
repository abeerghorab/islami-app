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
        headline3: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: whiteColor,
        ),
        headline4: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: MyThemeData.primartLight),
        subtitle1: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w600, color: blackColor),
        subtitle2: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w400, color: blackColor),
        bodyText1: TextStyle(
            fontSize: 20, color: blackColor, fontWeight: FontWeight.bold),
        bodyText2: TextStyle(
            fontSize: 25, color: blackColor, fontWeight: FontWeight.bold)),
  );
  static ThemeData darkMode = ThemeData();
}
