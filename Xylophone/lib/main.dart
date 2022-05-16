import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}


class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playAudio(int soundNumber) {
    final player = AudioCache();
    // call this method when desired
    player.play('note$soundNumber.wav');
        
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: Container(

        color: color,
        child: TextButton(
         onPressed: () => {
            playAudio(soundNumber)
         },
        child: Text("Tap me"),
    ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: Column (
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(color: Colors.orange, soundNumber: 1),
                  buildKey(color: Colors.orangeAccent, soundNumber: 2),
                  buildKey(color: Colors.deepOrangeAccent, soundNumber: 3),
                  buildKey(color: Colors.deepOrange, soundNumber: 4),
                  buildKey(color: Colors.red, soundNumber: 5),
                  buildKey(color: Colors.redAccent, soundNumber: 6),
                  buildKey(color: Colors.brown, soundNumber: 7),
                ],
            ),
          ),
        ),
    );
  }
}

