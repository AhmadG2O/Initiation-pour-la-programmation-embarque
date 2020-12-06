import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          //child: Column(
          child: Column(

            //verticalDirection: VerticalDirection.up,
            //mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.end,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.end,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[

                  Container(
                    alignment: Alignment.center,
                    height: 659.4,
                    width: 100.0,
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    //padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                    color: Colors.red,
                    child: Text("Défi"),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        height: 100.0,
                        width: 100.0,
                        margin: EdgeInsets.fromLTRB(55.0, 0.0, 0.0, 0.0),
                        color: Colors.yellow,
                        child: Text("réalisé"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 100.0,
                        width: 100.0,
                        margin: EdgeInsets.fromLTRB(55.0, 0.0, 0.0, 0.0),
                        color: Colors.green,
                        child: Text("avec"),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 659.4,
                    width: 100.0,
                    margin: EdgeInsets.fromLTRB(55.0, 0.0, 0.0, 0.0),
                    color: Colors.blue,
                    child: Text("succès"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
