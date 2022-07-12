import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'ui/home.dart';
import 'config/colors.dart';

void main() {
  //Improve Routing
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "John's Portfolio",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: AppColors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
