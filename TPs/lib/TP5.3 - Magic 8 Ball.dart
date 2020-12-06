import 'dart:math';
import 'package:flutter/material.dart';

// TP5.3 Magic 8 Ball

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Center(
            child: Text("Ask me Anything"),
          ),
          backgroundColor: Colors.blueAccent.shade700,
        ),
        body: Magic(),
      ),
    ),
  );
}

class Magic extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Magic> {
  @override
  int text = 1;
  String text1 = "YES";
  String text2 = "NO";
  String text3 = "I HAVE NO IDEA";
  String text4 = "SOON";
  String text_t = "ASK ME ANYTHING";
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            text = Random().nextInt(4) + 1;
            if (text == 1) {
              text_t = text1;
            }
            if (text == 2) {
              text_t = text2;
            }
            if (text == 3) {
              text_t = text3;
            }
            if (text == 4) {
              text_t = text4;
            }
          });
          //print("Bouton appuyé");
        },
        child: Stack(
          children: <Widget>[
            Image.asset('images/boule.jpg'),
            Container(
                //alignment: Alignment.center,
                height: 50.0,
                width: 50.0,
                margin: EdgeInsets.fromLTRB(129.0, 120.0, 0.0, 0.0),
                //color: Colors.blue,
                child: Text(
                  text_t,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                    fontFamily: 'Pacifico',
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
