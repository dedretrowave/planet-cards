import 'package:flutter/material.dart';
import 'ui/home/HomePage.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Planets",
      home: new HomePage(),
    );
  }
}