import 'package:flutter/material.dart';

import 'PlayingCardWidget.dart';

class PlayerDeck extends StatefulWidget {
  @override
  _PlayerDeckState createState() => _PlayerDeckState();
}

class _PlayerDeckState extends State<PlayerDeck> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width - 56;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        PlayingCardWidget(cardSize: screenWidth / 7),
        PlayingCardWidget(cardSize: screenWidth / 7),
        PlayingCardWidget(cardSize: screenWidth / 7),
        PlayingCardWidget(cardSize: screenWidth / 7),
        PlayingCardWidget(cardSize: screenWidth / 7),
        PlayingCardWidget(cardSize: screenWidth / 7),
        PlayingCardWidget(cardSize: screenWidth / 7),
      ],
    );
  }
}
