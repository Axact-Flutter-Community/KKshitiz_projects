import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

final player = AudioCache();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Xylo(),
      ),
    );
  }
}

class Xylo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        XyloButton(
          color: Colors.red,
          soundNo: 1,
        ),
        XyloButton(
          color: Colors.orange,
          soundNo: 2,
        ),
        XyloButton(
          color: Colors.yellow,
          soundNo: 3,
        ),
        XyloButton(
          color: Colors.green,
          soundNo: 4,
        ),
        XyloButton(
          color: Colors.blueAccent,
          soundNo: 5,
        ),
        XyloButton(
          color: Colors.indigo,
          soundNo: 6,
        ),
        XyloButton(
          color: Colors.purple,
          soundNo: 7,
        ),
      ],
    );
  }
}

class XyloButton extends StatelessWidget {
  XyloButton({this.color, this.soundNo});
  Color color;
  int soundNo;

  void playSound() {
    player.play('note$soundNo.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RawMaterialButton(
        onPressed: () => playSound(),
        padding: EdgeInsets.all(0),
        child: null,
        fillColor: color,
      ),
    );
  }
}
