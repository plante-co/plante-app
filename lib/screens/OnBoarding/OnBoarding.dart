import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:plante/container/SafeAreaColorful.dart';
import 'package:plante/utils/colors.dart';
import 'package:plante/utils/responsive.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image(image: AssetImage("assets/images/onboarding_bg1.png")),
        SafeArea(
            child: Container(
          margin: const EdgeInsets.only(top: 47),
          alignment: Alignment.topCenter,
          child: Image(
            image: AssetImage("assets/images/onboarding_intro1.png"),
            width: SizeConfig.safeBlockHorizontal * 70,
          ),
        ))
      ]),
    );
  }
}
