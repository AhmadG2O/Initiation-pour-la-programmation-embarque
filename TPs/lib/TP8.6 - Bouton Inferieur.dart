import 'package:flutter/material.dart';
import 'TP8.4 - Constantes.dart';

class BoutonInferieur extends StatelessWidget {
final Function onAppui;
final String titreBouton;
BoutonInferieur({@required this.onAppui, @required this.titreBouton});

@override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: onAppui,
    child: Container(
      child: Center(
        child: Text(
            titreBouton,
            style: kTitreTextStyle),
      ),
      color: kCouleurContainerInferieur,
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(bottom: 20.0),
      width: double.infinity,
      height: kHauteurContainerInferieur,
    ),
  );
}
}