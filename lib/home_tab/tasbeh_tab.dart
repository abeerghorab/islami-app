import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int sebhaCounter = 0;
  int tasbehCounter = 0;
  double angle = 0;
  List<String> tasbehat = [
    "سبحان الله",
    "الحمدالله",
    "الله اكبر",
    "لا الله الا الله",
    "لا حول ولا قوة الا بالله"
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          height: height * 0.45,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                  left: width * 0.45,
                  child: Image.asset(
                    "Assets/head_sebha_logo.png",
                    fit: BoxFit.cover,
                    width: width * 0.2,
                    height: height * 0.13,
                  )),
              Positioned(
                  top: height * 0.1,
                  child: Transform.rotate(
                      angle: angle,
                      child: Image.asset("Assets/body_sebha_logo.png"))),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          AppLocalizations.of(context)!.tasbehNumber,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20),
            color: Theme.of(context).primaryColor.withOpacity(.5),
          ),
          child: Text(
            sebhaCounter.toString(),
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            if (sebhaCounter == 5) {
              sebhaCounter = 0;
              if (tasbehCounter == tasbehat.length - 1) {
                tasbehCounter = 0;
              } else {
                tasbehCounter++;
              }
            } else {
              sebhaCounter++;
            }
            angle += 20;
            setState(() {});
          },
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              tasbehat[tasbehCounter],
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        )
      ]),
    );
  }
}
