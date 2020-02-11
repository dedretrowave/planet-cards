import 'package:flutter/material.dart';
import 'package:planet_cards/model/Planet.dart';
import 'package:planet_cards/ui/styles/Fonts.dart';
import 'package:planet_cards/ui/common/PlanetRow.dart';
import 'package:planet_cards/ui/common/Separator.dart';

class DetailedPage extends StatelessWidget {
  final Planet planet;

  DetailedPage(this.planet);

  Container _getBackground() {
    return new Container(
      child: new Image.network(
        planet.picture,
        fit: BoxFit.cover,
        height: 300.0,
      ),
      constraints: new BoxConstraints.expand(height: 300.0),
    );
  }

  Container _getGradient() {
    return new Container(
      margin: new EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: <Color>[
              new Color(0x00736AB7),
              new Color(0xFF736AB7)
            ],
          stops: [0.0, 0.9],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
        )
      ),
    );
  }

  ListView _getContent() {
    final _overviewTitle = "Overview".toUpperCase();

    return new ListView(
      padding: new EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
      children: <Widget>[
        new PlanetRow(planet, horizontal: false),
        new Container(
          padding: new EdgeInsets.fromLTRB(32.0, 72.0, 72.0, 0.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_overviewTitle, style: Font.headerTextStyle),
              new Separator(),
              new Text(planet.description, style: Font.regularTextStyle),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(planet.name),
      ),
      body: new Container(
        constraints: new BoxConstraints.expand(),
        color: new Color(0xFF736AB7),
        child: new Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(),
//            _getToolbar(context)
          ],
        )
      ),
    );
  }
}