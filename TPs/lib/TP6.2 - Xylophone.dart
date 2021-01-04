import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int numeroSon) {
    final player = AudioCache();
    player.play('note$numeroSon.wav');
  }

  Expanded buildKey({Color couleur, int numeroSon}) {
    return Expanded(
      child: FlatButton(
        color: couleur,
        onPressed: () {
      playSound(numeroSon);
    },

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /*Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    playSound(numeroSon: 1);
                  },
                  child: Text('Cliquez sur moi'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playSound(numeroSon: 2);
                  },
                  child: Text('Cliquez sur moi'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playSound(numeroSon: 3);
                  },
                  child: Text('Cliquez sur moi'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playSound(numeroSon: 4);
                  },
                  child: Text('Cliquez sur moi'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playSound(numeroSon: 5);
                  },
                  child: Text('Cliquez sur moi'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.indigo,
                  onPressed: () {
                    playSound(numeroSon: 6);
                  },
                  child: Text('Cliquez sur moi'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.purple,
                  onPressed: () {
                    playSound(numeroSon: 7);
                  },
                  child: Text('Cliquez sur moi'),
                ),
              ),

               */

              buildKey(couleur : Colors.red, numeroSon :1),
              buildKey(couleur : Colors.orange, numeroSon :2),
              buildKey(couleur : Colors.yellow, numeroSon :3),
              buildKey(couleur : Colors.green, numeroSon :4),
              buildKey(couleur : Colors.blue, numeroSon :5),
              buildKey(couleur : Colors.indigo, numeroSon :6),
              buildKey(couleur : Colors.purple, numeroSon :7),


            ],
          ),
        ),
      ),
    );
  }
}
