import 'package:flutter/material.dart';

import 'package:islami/Hadeth/hadeth_tab.dart';
import 'package:islami/Hadeth/item_hadeth_details.dart';
import 'package:islami/My_theme.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = "hadeth-details-screen";

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        provider.isDarkMode()
            ? Image.asset(
                "Assets/dark_bg.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              )
            : Image.asset(
                "Assets/default_bg.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "${args.title}",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                color: MyThemeData.whiteColor,
                borderRadius: BorderRadius.circular(24)),
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ItemHadethDetails(name: args.content[index]);
              },
              itemCount: args.content.length,
            ),
          ),
        ),
      ],
    );
  }
}
