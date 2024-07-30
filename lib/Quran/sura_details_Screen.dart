import 'package:flutter/material.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = "sura-details-screen";

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
        ),
      ],
    );
  }
}
