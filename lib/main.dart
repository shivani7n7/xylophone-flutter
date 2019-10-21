import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNo) {
    final player = AudioCache();
    player.play('note$soundNo.wav');
  }

  Widget buildButton(int soundNo, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNo);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(1, Colors.red),
              buildButton(2, Colors.pink[300]),
              buildButton(3, Colors.yellow),
              buildButton(4, Colors.orange),
              buildButton(5, Colors.greenAccent),
              buildButton(6, Colors.green),
              buildButton(7, Colors.blueAccent),
            ],
          ),
        ),
      ),
    );
  }
}
