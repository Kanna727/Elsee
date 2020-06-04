import 'package:flutter/material.dart';

import 'PlayingCardWidget.dart';

class DiscardedStack extends StatefulWidget {
  @override
  _DiscardedStackState createState() => _DiscardedStackState();
}

class _DiscardedStackState extends State<DiscardedStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.directional(
            textDirection: TextDirection.ltr, child: PlayingCardWidget(), start: 30),
        Positioned.directional(
            textDirection: TextDirection.ltr, child: PlayingCardWidget(), start: 20),
        Positioned.directional(
            textDirection: TextDirection.ltr, child: PlayingCardWidget(), start: 10),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: PlayingCardWidget(),
        ),
      ],
    );
  }
}
