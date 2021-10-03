import 'dart:async';

import "package:flutter/material.dart";
import 'package:plante/utils/responsive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    new Timer(new Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, "/onboarding");
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        child: Center(child: Text("Slashscreen")),
      ),
    );
  }
}
