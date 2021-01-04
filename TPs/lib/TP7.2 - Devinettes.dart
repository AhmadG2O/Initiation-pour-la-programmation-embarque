import 'TP7.2 - Question.dart';

class ToutesQuestions {
  static int fin = 0;

  int _numeroQuestion = 0;
  List<Question> _questionList = [
    Question(t: "J'apprécie les ITS2", r: true),
    Question(t: "Je suis riche", r: true),
    Question(t: "Je suis le meilleur des copains", r: true),
    Question(t: "Je suis un bébé", r: false),
    Question(t: "Je n'aime pas O'Tacos", r: false),
    Question(t: "Je n'aime pas Tacos King", r: true),
    Question(t: "J'aime Kydam", r: true),
  ];

  void middleQuestion() {
    if (_numeroQuestion == _questionList.length -1){
      fin++;
    }
  }

  void finQuestion() {
    if (fin > 1){
      fin=2;
    }
  }

  void prochaineQuestion() {
    if (_numeroQuestion < _questionList.length -1){
    _numeroQuestion++;
    }
  }

  String getQuestion() {
    return _questionList[_numeroQuestion].questionTexte;
  }

  bool getReponse() {
    return _questionList[_numeroQuestion].questionReponse;
  }
}
