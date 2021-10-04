import 'package:flutter/material.dart';
import 'package:plante/screens/Splash/Splash.dart';
import 'package:plante/screens/OnBoarding/OnBoarding.dart';
// import "package:plante/utils/responsive.dart";

class App {
  App() {
    runApp(
      new MaterialApp(
        title: 'Planté',
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'EFCircular'),
        home: SplashScreen(),
        routes: <String, WidgetBuilder>{
          '/splash': (BuildContext context) => SplashScreen(),
          '/onboarding': (BuildContext context) => OnBoardingScreen(),
        },
      ),
    );
  }
}
