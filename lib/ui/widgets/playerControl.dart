import 'package:flutter/material.dart';

class PlayerControl extends StatefulWidget {
  @override
  _PlayerControlState createState() => _PlayerControlState();
}

class _PlayerControlState extends State<PlayerControl> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.pause_circle_outline), onPressed: () {}),
          OutlineButton(onPressed: (){}, child: Text('Play all 5')),
          // RaisedButton(onPressed: (){}),
          FloatingActionButton(
            elevation: 10,
            backgroundColor: Colors.redAccent,
              child: Text(
                'SHOW',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
