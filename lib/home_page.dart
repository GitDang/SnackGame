import 'package:SnakeGameFlutter/game_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
          Image.asset('assets/snake_baby.jpg'),
          SizedBox(height: 50.0),
          Text('Enjoy the moments with SnakeBaby',
              style: TextStyle(
                  color: const Color.fromARGB(255, 244, 228, 228), fontSize: 40.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SizedBox(height: 50.0),
          TextButton.icon(
              // color: Colors.redAccent,
              style: TextButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => GamePage()));
              },
              icon: Icon(Icons.play_circle_outline, color: const Color.fromARGB(255, 236, 222, 222), size: 30.0),
              label: Text("Let's start", style: TextStyle(color: const Color.fromARGB(255, 246, 232, 232), fontSize: 20.0))),
        ],
      ),
    ));
  }
}
