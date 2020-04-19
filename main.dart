import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  //here we use expanded instead of void for the function to be
  //able to return expanded because void doesn't return shit
  Expanded Buildkey({int soundNumber, Color color}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          //player is an audio variable
          player.play('note$soundNumber.wav');
          //we don't put assets/note1.wav here because the package
          //already knows that the audio is saved in a file named assets
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
              Buildkey(soundNumber: 1, color: Colors.red),
              Buildkey(soundNumber: 2, color: Colors.orange),
              Buildkey(soundNumber: 3, color: Colors.yellow),
              Buildkey(soundNumber: 4, color: Colors.green),
              Buildkey(soundNumber: 5, color: Colors.teal),
              Buildkey(soundNumber: 6, color: Colors.blue),
              Buildkey(soundNumber: 7, color: Colors.purple),

            ],
          ),
        ),
      ),
    );
  }
}
