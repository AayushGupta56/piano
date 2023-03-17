import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void playerNumber(int n) {
    final player1 = AudioPlayer();
    player1.play(AssetSource('note$n.wav'));
  }

  Expanded buildKey({Color color = Colors.green, int n = 5}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playerNumber(n);
        },
        child: Container(),
        style: TextButton.styleFrom(
          backgroundColor: color,
          // minimumSize: Size.fromHeight(30),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Piano'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.purpleAccent, n: 1),
                buildKey(color: Colors.indigoAccent, n: 2),
                buildKey(color: Colors.blueAccent, n: 3),
                buildKey(color: Colors.green, n: 4),
                buildKey(color: Colors.yellowAccent, n: 1),
                buildKey(color: Colors.orangeAccent, n: 1),
                buildKey(color: Colors.red, n: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// child: TextButton(
// onPressed: () {
// final player = AudioPlayer();
// player.play(AssetSource('note1.wav'));
// },
// child: Text('Enter'),
// ),
