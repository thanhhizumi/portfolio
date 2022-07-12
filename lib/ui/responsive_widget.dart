import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget desktopScreen;
  //final Widget tabletScreen;
  final Widget mobileScreen;

  const ResponsiveWidget(
      {Key? key,
      required this.desktopScreen,
      //required this.tabletScreen,
      required this.mobileScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 950) {
      return desktopScreen;
    }
    if (screenWidth > 600) {
      //eturn tabletScreen;
    }

    return mobileScreen;
  }
}
