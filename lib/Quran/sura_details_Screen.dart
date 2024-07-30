import 'package:flutter/material.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = "sura-details-screen";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
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
              "${args.name}",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
      ],
    );
  }
}

class SuraDetailsArgs {
  //data class
  String name;
  int index;
  SuraDetailsArgs({required this.name, required this.index});
}
