import 'package:flutter/material.dart';
import 'package:islami/Hadeth/hadeth_tab.dart';
import 'package:islami/Quran/sura_details_Screen.dart';

class ItemHadethName extends StatelessWidget {
  Hadeth hadeth;
  ItemHadethName({super.key, required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.subtitle2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
