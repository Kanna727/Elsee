import 'package:flutter/material.dart';
import 'PlayingCardWidget.dart';

class BotWidget extends StatefulWidget {
  final String botName;

  const BotWidget({Key key, this.botName}) : super(key: key);
  @override
  _BotWidgetState createState() => _BotWidgetState();
}

class _BotWidgetState extends State<BotWidget> {
  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text('EL'),
              ),
            ),
            Text(widget.botName)
          ],
        ),
        Stack(
          children: <Widget>[
            Positioned.directional(
                textDirection: TextDirection.ltr,
                child: PlayingCardWidget(),
                start: 60),
            Positioned.directional(
                textDirection: TextDirection.ltr,
                child: PlayingCardWidget(),
                start: 50),
            Positioned.directional(
                textDirection: TextDirection.ltr,
                child: PlayingCardWidget(),
                start: 40),
            Positioned.directional(
                textDirection: TextDirection.ltr,
                child: PlayingCardWidget(),
                start: 30),
            Positioned.directional(
                textDirection: TextDirection.ltr,
                child: PlayingCardWidget(),
                start: 20),
            Positioned.directional(
                textDirection: TextDirection.ltr,
                child: PlayingCardWidget(),
                start: 10),
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: PlayingCardWidget(),
            ),
            // Positioned(left: 30, child: Text('7'))
          ],
        ),
      ],
    );
  }
}
