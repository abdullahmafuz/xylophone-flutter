import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

 Expanded buildKey(int soundNumber , Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(1, Colors.blue),
                buildKey(2, Colors.teal),
                buildKey(3, Colors.yellow),
                buildKey(4, Colors.blueGrey),
                buildKey(5, Colors.red),
                buildKey(6, Colors.purpleAccent),
                buildKey(7, Colors.tealAccent),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
