import 'package:flutter/material.dart';
import 'package:islami/Quran/sura_details_Screen.dart';

class SuraName extends StatelessWidget {
  String name;
  SuraName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(SuraDetailsScreen.routeName);
        },
        child: Text(
          name,
          style: Theme.of(context).textTheme.subtitle2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
