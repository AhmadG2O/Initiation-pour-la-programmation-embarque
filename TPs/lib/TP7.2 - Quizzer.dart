import 'package:flutter/material.dart';
import 'TP7.2 - Devinettes.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.grey.shade900,
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: QuizPage(),
              ),
            )));
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

ToutesQuestions toutesQuestions = ToutesQuestions();

class _QuizPageState extends State<QuizPage> {
  List<Icon> compteurPoints = [];
  int numeroQuestion = 0;

  Widget FadeAlertAnimation(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return Align(
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }

  _onCustomAnimationAlertPressed(context) {
    Alert(
      context: context,
      title: "WARNING",
      desc: "Arretez-vous!!",
      alertAnimation: FadeAlertAnimation,
      buttons: [
        DialogButton(
          child: Text(
            "ABANDONNEZ",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          onPressed: () => _onBasicAlertPressed(context),
          width: 120,
        )
      ],
    ).show();
  }

  _onBasicAlertPressed(context) {
   Alert(
      context: context,
      type: AlertType.error,
      title: "WARNING",
      desc: "Vous êtes arrivé à la fin.",
     alertAnimation: FadeAlertAnimation,
      buttons: [
        DialogButton(
          child: Text(
            "STOPPEZ-VOUS",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          onPressed: () => _onCustomAnimationAlertPressed(context),
          width: 120,
        )
      ],
    ).show();
  }

  void verifieReponse(bool reponseUtilisateur){
    bool reponseCorrecte = toutesQuestions.getReponse();
    setState(() {
      if (reponseCorrecte == reponseUtilisateur){
        print('Bonne réponse');
        compteurPoints.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        print('Mauvaise réponse');
        compteurPoints.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }

      toutesQuestions.prochaineQuestion();
      toutesQuestions.middleQuestion();
      toutesQuestions.finQuestion();
      if (ToutesQuestions.fin == 2){
        _onBasicAlertPressed(context);
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                toutesQuestions.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
               verifieReponse(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                verifieReponse(false);
              },
            ),
          ),
        ),
        Row(
          children: compteurPoints,
        ),
      ],
    );
  }
}
