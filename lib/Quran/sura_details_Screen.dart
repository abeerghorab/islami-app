import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/My_theme.dart';
import 'package:islami/Quran/item_sura_details.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "sura-details-screen";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadQuranFile(args.index);
    }

    return Stack(
      children: [
        Image.asset(
          "Assets/default_bg.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "${args.name}",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                color: MyThemeData.whiteColor,
                borderRadius: BorderRadius.circular(24)),
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: verses.length == 0
                ? Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return ItemSuraDetails(name: verses[index]);
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Theme.of(context).primaryColor,
                        thickness: 2,
                      );
                    },
                    itemCount: verses.length),
          ),
        ),
      ],
    );
  }

  void loadQuranFile(int index) async {
    String fileContent =
        await rootBundle.loadString("Assets/files/${index + 1}.txt");
    List<String> lines = fileContent.split("\n");
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  //data class
  String name;
  int index;
  SuraDetailsArgs({required this.name, required this.index});
}
