import 'package:flutter/material.dart';

//TP2-3 avec défi

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: /*Center(
            child:*/ Text("TP2-3 : Je suis pauvre"),
          //),
          backgroundColor: Colors.blueGrey[500],
        ),
        backgroundColor: Colors.blue,
        body: Center(
          child: Image(
            image: AssetImage('images/Chaton.PNG'),
//NetworkImage(
//'https://www.sciencesetavenir.fr/assets/img/2019/03/25/cover-r4x3w1000-5c98c40f5bf3d-cat-3535399-1920.jpg'),
          ),
        ),
      ),
    ));
