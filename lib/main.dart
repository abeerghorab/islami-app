import 'package:flutter/material.dart';
import 'package:islami/My_theme.dart';
import 'package:islami/Quran/sura_details_Screen.dart';
import 'package:islami/home_screen.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
      },
      theme: MyThemeData.LightMode,
    );
  }
}
