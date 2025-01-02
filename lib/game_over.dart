import 'package:SnakeGameFlutter/game_page.dart';
import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {
  final int score;

  GameOver({required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: const Color.fromARGB(255, 4, 72, 128),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You Lose!',
              style: TextStyle(
                  color: const Color.fromARGB(255, 236, 51, 51),
                  fontSize: 55.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  shadows: [
                    Shadow(
                        // bottomLeft
                        offset: Offset(-1.5, -1.5),
                        color: Colors.black),
                    Shadow(
                        // bottomRight
                        offset: Offset(1.5, -1.5),
                        color: Colors.black),
                    Shadow(
                        // topRight
                        offset: Offset(1.5, 1.5),
                        color: Colors.black),
                    Shadow(
                        // topLeft
                        offset: Offset(-1.5, 1.5),
                        color: Colors.black),
                  ])),
          SizedBox(height: 50.0),
          Text('Points achieved: $score', style: TextStyle(color: Colors.white, fontSize: 20.0)),
          SizedBox(height: 45.0),
          TextButton.icon(
              // color: Colors.redAccent,
              style: TextButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 30.0)),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => GamePage()));
              },
              icon: Icon(Icons.replay_rounded, color: Colors.white, size: 25.0),
              label: Text("Replay", style: TextStyle(color: Colors.white, fontSize: 20.0))),
        ],
      ),
    ));
  }
}
