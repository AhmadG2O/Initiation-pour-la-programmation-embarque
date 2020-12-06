import 'dart:math';
import 'package:flutter/material.dart';

// TP5.1-5.2 avec Défi

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Jeu de dés"),
          backgroundColor: Colors.red,
        ),
        body: JeuDeDes(),
      ),
    ),
  );
}

class JeuDeDes extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<JeuDeDes> {
  @override
  int faceDeGauche=1;
  int faceDeDroite=1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                setState(() {
                  faceDeGauche=Random().nextInt(6)+1;
                  faceDeDroite=Random().nextInt(6)+1;
                });
                //print("Bouton appuyé");
                },
                child: Image.asset("images/Face$faceDeGauche.jpg")
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: (){
                  setState(() {
                    faceDeGauche=Random().nextInt(6)+1;
                    faceDeDroite=Random().nextInt(6)+1;
                  });
                  //print("Bouton appuyé");
                },
                child: Image.asset("images/Face$faceDeDroite.jpg")

            ),
          ),
        ],
      ),
    );
  }
}
