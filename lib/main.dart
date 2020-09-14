import 'package:flutter/material.dart';
import 'package:we_fit/BMI.dart';
import 'package:we_fit/Dashboard.dart';
import 'package:we_fit/Home.dart';
import 'package:we_fit/helper/constants.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {

  final routes = <String, WidgetBuilder>{
    homePageTag: (context) => Home(),
    bmiPageTag: (context) => BMI(),
    dashboardTag: (context) => Dashboard(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData.dark(),
      home: Home(),
      routes: routes,
    );
  }
}