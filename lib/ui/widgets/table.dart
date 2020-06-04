import 'package:flutter/material.dart';

class GameTable extends StatefulWidget {
  @override
  _GameTableState createState() => _GameTableState();
}

class _GameTableState extends State<GameTable> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
              side: BorderSide(color: Colors.grey)),
          child: Container(
            width: 40,
            height: 1.43 * 40,
          ),
        ),
      ],
    );
  }
}
