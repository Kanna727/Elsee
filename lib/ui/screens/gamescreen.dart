import 'package:elsee/models/PlayingCardModel.dart';
import 'package:elsee/ui/widgets/playerControl.dart';
import 'package:elsee/utils/stack.dart';

import '../widgets/bot.dart';
import '../widgets/cardsStack.dart';
import '../widgets/discardedStack.dart';
import '../widgets/playerDeck.dart';
import '../widgets/table.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  // Stores the cards on the seven columns
  List<PlayingCard> botCards = [];
  List<PlayingCard> playerCards = [];

  StackCollection<PlayingCard> allCards = new StackCollection();
  StackCollection<PlayingCard> cardsDeckOpened = new StackCollection();

  PlayingCard jokerCard;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void generateAllCards() {
    // Add all cards to deck
    var cardValues = CardSuit.values;
    var cardTypes = CardType.values;
    cardTypes.shuffle();
    cardValues.shuffle();
    cardValues.forEach((suit) {
      cardTypes.forEach((type) {
        allCards.push(PlayingCard(
          cardType: type,
          cardSuit: suit,
          faceUp: false,
        ));
      });
    });
  }

  void generateSessionCards() {
    for (var i = 0; i < 15; i++) {
      i % 2 == 0
          ? botCards.add(allCards.pop())
          : playerCards.add(allCards.pop());
    }

    cardsDeckOpened.push(allCards.pop());
    jokerCard = allCards.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 10),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  BotWidget(botName: 'Elsee'),
                  // BotWidget(botName: 'Elsee'),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     BotWidget(botName: 'Elsee'),
              //     // BotWidget(botName: 'Elsee'),
              //   ],
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CardsStack(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: GameTable(),
                  ),
                  DiscardedStack()
                ],
              ),
              PlayerDeck(),
              PlayerControl()
            ],
          ),
        ),
      ),
    );
  }
}
