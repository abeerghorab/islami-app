import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:islami/Hadeth/hadeth_details_screen.dart';
import 'package:islami/My_theme.dart';
import 'package:islami/Quran/sura_details_Screen.dart';
import 'package:islami/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: IslamiApp()));
}

class IslamiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      home: AnimatedSplashScreen(
        backgroundColor: Color(0xffB7935f),
        splashIconSize: 300,
        splashTransition: SplashTransition.rotationTransition,
        splash: CircleAvatar(
          radius: 180,
          backgroundImage: AssetImage("Assets/quran3.jpg"),
        ),
        nextScreen: HomeScreen(),
      ),
      theme: MyThemeData.LightMode,
      darkTheme: MyThemeData.darkMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
      themeMode: provider.appTheme,
    );
  }
}
