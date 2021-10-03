import "package:flutter/material.dart";
import 'package:flutter/services.dart';

class SafeAreaColorful extends StatelessWidget {
  const SafeAreaColorful(
      {Key? key,
      required this.child,
      this.topColor = Colors.white,
      this.bottomColor = Colors.white,
      this.styleStatusBar = SystemUiOverlayStyle.light})
      : super(key: key);
  final Widget child;
  final Color? topColor;
  final Color? bottomColor;
  final SystemUiOverlayStyle? styleStatusBar;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              flex: 1, // 60% of space => (6/(6 + 4))
              child: Container(
                color: topColor,
              ),
            ),
            Expanded(
              flex: 1, // 40% of space
              child: Container(
                color: bottomColor,
              ),
            ),
          ],
        ),
        SafeArea(
            child: Container(
          color: Colors.white,
          child: child,
        ))
      ],
    );
  }
}
