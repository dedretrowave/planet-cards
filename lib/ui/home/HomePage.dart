import 'package:flutter/material.dart';
import 'file:///D:/work/planet_cards/lib/ui/common/GradientAppBar.dart';
import 'file:///D:/work/planet_cards/lib/ui/home/HomePageBody.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget> [
          new GradientAppBar("Planet Wiki"),
          new HomePageBody(),
        ]
      ),
    );
  }
}