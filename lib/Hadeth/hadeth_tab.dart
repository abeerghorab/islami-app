import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Hadeth/item_hadeth_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }

    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset("Assets/hadeth_logo.png"),
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 2,
        ),
        Text(
          AppLocalizations.of(context)!.hadethName,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 2,
        ),
        Expanded(
          flex: 3,
          child: allAhadeth.length == 0
              ? Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                )
              : ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 2,
                    );
                  },
                  itemBuilder: (context, index) {
                    return ItemHadethName(hadeth: allAhadeth[index]);
                  },
                  itemCount: 50,
                ),
        ),
      ],
    );
  }

  void loadHadethFile() async {
    String ahadethContent =
        await rootBundle.loadString("Assets/files/ahadeth .txt");
    List<String> allHadethList = ahadethContent.split("#\r\n");
    for (int i = 0; i < allHadethList.length; i++) {
      List<String> eachHadeth = allHadethList[i].split("\n");
      String title = eachHadeth[0]; //title
      eachHadeth.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: eachHadeth);
      allAhadeth.add(hadeth);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  List<String> content;
  Hadeth({required this.title, required this.content});
}
