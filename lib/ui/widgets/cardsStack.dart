import 'package:flutter/material.dart';

import 'PlayingCardWidget.dart';

class CardsStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      overflow: Overflow.visible,
      children: <Widget>[
        Positioned.directional(
            textDirection: TextDirection.rtl,
            child: PlayingCardWidget(
              cardRotation: 90,
            ),
            start: 30),
        Positioned.directional(
            textDirection: TextDirection.rtl, child: PlayingCardWidget(), start: 20),
        Positioned.directional(
            textDirection: TextDirection.rtl, child: PlayingCardWidget(), start: 10),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: PlayingCardWidget(),
        ),
      ],
    );
  }

  CardsStack({this.jokerCard});
  final int jokerCard;
}
