import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  playSound(int soundNo) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNo.wav'));
  }

  Expanded  buildKey({Color color, int soundNo}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: color
        ),
        onPressed: () async {
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
            children: [

              buildKey(color: Colors.red, soundNo : 1),
              buildKey(color: Colors.orange, soundNo: 2),
              buildKey(color: Colors.yellow , soundNo: 3),
              buildKey(color: Colors.green , soundNo: 4),
              buildKey(color: Colors.teal , soundNo: 5),
              buildKey(color: Colors.blue , soundNo: 6),
              buildKey(color: Colors.purple , soundNo: 7),

            ],
          ),
        ),
      ),
    );
  }
}
