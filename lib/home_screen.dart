import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = "Home-Screen";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "Assets/Homeground.jpg",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          //backgroundColor: Colors.transparent,
          appBar: AppBar(
              // backgroundColor: Colors.transparent,
              centerTitle: true,
              title: Text(
                "islami",
                style: Theme.of(context).textTheme.headline1,
              )),
        ),
      ],

      /**/
    );
  }
}
