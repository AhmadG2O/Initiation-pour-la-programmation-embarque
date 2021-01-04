import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'TP8.3 - Carte reutilisable.dart';
import 'TP8.3 - Contenu icon.dart';
import 'TP8.4 - Constantes.dart';
import 'TP8.6 - Results Page.dart';
import 'package:TPs/TP8.6 - Bouton Arrondi Icone.dart';
import 'TP8.6 - Bouton Inferieur.dart';
import 'TP8.6 - Logique IMC.dart';

enum Genre {
  homme,
  femme,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Genre selection;
  Color couleurCarteHomme = kCouleurContainerInactif;
  Color couleurCarteFemme = kCouleurContainerInactif;


  /* void updateCouleur(Genre selection) {
    if (selection == Genre.homme) {
        couleurCarteHomme = kCouleurContainerActif;
        couleurCarteFemme = kCouleurContainerInactif;
      } else {
        couleurCarteHomme = kCouleurContainerInactif;
      }


    if (selection == Genre.femme) {
        couleurCarteFemme = kCouleurContainerActif;
        couleurCarteHomme = kCouleurContainerInactif;
      } else {
        couleurCarteFemme = kCouleurContainerInactif;
      }
    }*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CarteReutilisable(
                    onPress: () {
                      setState(() {
                        //updateCouleur(Genre.homme);
                        selection = Genre.homme;
                      });
                    },
                    couleur: selection == Genre.homme
                        ? kCouleurContainerActif
                        : kCouleurContainerInactif,
                    cardChild: ContenuIcon(
                        icon: FontAwesomeIcons.mars, label: "Homme"),
                  ),
                ),
                Expanded(
                  child: CarteReutilisable(
                    onPress: () {
                      setState(() {
                        //updateCouleur(Genre.femme);
                        selection = Genre.femme;
                      });
                    },
                    couleur: selection == Genre.femme
                        ? kCouleurContainerActif
                        : kCouleurContainerInactif,
                    cardChild: ContenuIcon(
                        icon: FontAwesomeIcons.venus, label: "Femme"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CarteReutilisable(
              couleur: kCouleurContainerActif,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Hauteur",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        kHauteur.toString(),
                        style: kTitreTextStyle,
                      ),
                      Text(
                        " cm",
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: kSliderActif,
                          inactiveTrackColor: kSliderInactif,
                          thumbColor: kSliderActif,
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider(
                          value: kHauteur.toDouble(),
                          min: kHauteurMin,
                          max: kHauteurMax,
                          activeColor: kSliderActif,
                          inactiveColor: kSliderInactif,
                          onChanged: (double nouvelleValeur) {
                            setState(() {
                              kHauteur = nouvelleValeur.toInt();
                            });
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CarteReutilisable(
                    couleur: kCouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Poids",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          poids.toString(),
                          style: kTitreTextStyle,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              BoutonArrondiIcone(
                                icone: FontAwesomeIcons.minus,
                                appuye: () {
                                  setState(() {
                                    poids = poids - 0.5;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              BoutonArrondiIcone(
                                icone: FontAwesomeIcons.plus,
                                appuye: () {
                                  setState(() {
                                    poids = poids + 0.5;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CarteReutilisable(
                    couleur: kCouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Age",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kTitreTextStyle,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              BoutonArrondiIcone(
                                icone: FontAwesomeIcons.minus,
                                appuye: () {
                                  setState(() {
                                    age = age - 1;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              BoutonArrondiIcone(
                                icone: FontAwesomeIcons.plus,
                                appuye: () {
                                  setState(() {
                                    age = age + 1;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BoutonInferieur(
            titreBouton: "CALCULATE",
            onAppui: (){
              LogiqueIMC calc = LogiqueIMC(hauteur : kHauteur, poids: poids);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      IMCResultat: calc.calculIMC(),
                      textResultat: calc.getResultat(),
                      textInterpretation: calc.getInterpretation(),
                    ),
                  ),
              );
            },
          )
        ],
      ),
    );
  }
}


