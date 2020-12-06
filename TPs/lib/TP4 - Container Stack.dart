import 'package:flutter/material.dart';

// TP4.1-4.3 avec défi
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
          child: Stack(
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
              Container(
                alignment: Alignment.center,
                height: 660.0,
                width: 100.0,
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                //padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                color: Colors.red,
                child:
                    //CrossAxisAlignment.stretch,
                    Text("Défi"),
              ),
              //SizedBox(height: 20.0),
              SizedBox(width: 20.0),
              Container(
                alignment: Alignment.center,
                height: 100.0,
                width: 100.0,
                margin: EdgeInsets.fromLTRB(155.0, 225.0, 0.0, 0.0),
                //padding: EdgeInsets.all(10.0),
                color: Colors.yellow,
                child: Text("réalisé"),
              ),
              Container(
                alignment: Alignment.center,
                height: 100.0,
                width: 100.0,
                margin: EdgeInsets.fromLTRB(155.0, 325.0, 0.0, 0.0),
                color: Colors.green,
                child: Text("avec"),
              ),
              SizedBox(width: 20.0),

              Container(
                alignment: Alignment.center,
                height: 660.0,
                width: 100.0,
                margin: EdgeInsets.fromLTRB(310.0, 0.0, 0.0, 0.0),
                color: Colors.blue,
                child: Text("succès"),
              ),
              Container(
                width: double.infinity,
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
