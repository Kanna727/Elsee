import 'package:elsee/models/PlayingCardModel.dart';
import 'package:flutter/material.dart';

class PlayingCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: new AlwaysStoppedAnimation(this.cardRotation / 360),
      child: Card(
        elevation: 10,
        color: Colors.blueGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        child: Container(
          width: this.cardSize,
          height: 1.43 * this.cardSize,
          child: new Stack(
            children: <Widget>[
              Positioned(
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Text(this.playingCard.cardType.toString()),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  PlayingCardWidget(
      {this.cardRotation = 0, this.cardSize = 40, @required this.playingCard});
  final PlayingCard playingCard;
  final double cardRotation;
  final double cardSize;
}
