import 'package:flutter/material.dart';

import 'package:islami/home_tab/hadeth_tab.dart';
import 'package:islami/Quran/quran_tab.dart';
import 'package:islami/home_tab/radio_tab.dart';
import 'package:islami/home_tab/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static const String routeName = "Home-Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "Assets/ground10.jpg",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "islami",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(
                        "Assets/icon_quran.png",
                      ),
                    ),
                    label: "Quran"),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("Assets/icon_hadeth.png"),
                    ),
                    label: "hadeth"),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("Assets/icon_sebha.png"),
                    ),
                    label: "tasbeh"),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("Assets/icon_radio.png"),
                    ),
                    label: "radio"),
              ],
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), TasbehTab(), RadioTab()];
}
