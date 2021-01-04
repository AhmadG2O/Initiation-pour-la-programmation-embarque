import 'package:TPs/TP8.3%20-%20Carte%20reutilisable.dart';
import 'package:TPs/TP8.4%20-%20Constantes.dart';
import 'package:TPs/TP8.6%20-%20Bouton%20Inferieur.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget{
  ResultsPage(
  {@required this.IMCResultat,
  @required this.textInterpretation,
  @required this.textResultat});

  final String IMCResultat;
  final String textInterpretation;
  final String textResultat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculette IMC'),
      ),
      body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: <Widget>[
         Expanded(
           child: Center(
           child : Container(
             child: Text("Votre résultat", style: kTitreTextStyle),
           )
         ),
         ),
         Expanded(
           flex : 5,
           child: CarteReutilisable(
             couleur: kCouleurContainerActif,
             cardChild: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[
                 Text(
                 textResultat,
                 style: kResultatTextStyle,
                 ),
                 Text(
                   IMCResultat,
                 style: kIMCTextStyle,
                 ),
                 Text(
                   textInterpretation,
                 textAlign: TextAlign.center,
                 style: kCorpsTextStyle,)
               ],
             ),
           ),
         ),
         BoutonInferieur(
           titreBouton: "RE-CALCULER",
           onAppui: (){
             Navigator.pop(context);
           },
         )
       ],
      )
    );
  }
}