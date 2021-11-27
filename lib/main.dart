// ignore_for_file: deprecated_member_use

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {

    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({required int n, required Color color}){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(n);
        },
        color: color),
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
              buildKey(n: 1, color: Colors.red),
              buildKey(n: 2, color: Colors.yellow),
              buildKey(n: 3, color: Colors.blue),
              buildKey(n: 4, color: Colors.cyan),
              buildKey(n: 5, color: Colors.green),
              buildKey(n: 6, color: Colors.pink),
              buildKey(n: 7, color: Colors.amber),
            ],
          ),
        ),
      ),
    );
  }
}