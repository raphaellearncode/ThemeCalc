import 'package:flutter/material.dart';
import 'package:simple_calc_with_themes/screens/home/calc_portrait.dart';
import 'package:simple_calc_with_themes/screens/home/calc_land.dart';
//
//class HomePageRoute  extends{
//  HomePageRoute() : super(builder: (BuildContext context) => new Home());
//
//  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
//  @override
//  Widget buildPage(BuildContext context, Animation<double> animation,
//      Animation<double> secondaryAnimation) {
//    return new FadeTransition(opacity: animation, child: new Home());
//  }
//}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Animation<double> animation;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      bottom: false,
      child: OrientationBuilder(builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? PortraitCalc()
            : LandscapeCalc();
      }),
    );
  }
}
