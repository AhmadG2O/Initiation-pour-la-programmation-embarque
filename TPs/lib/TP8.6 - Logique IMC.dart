import 'package:flutter/material.dart';
import 'dart:math';

class LogiqueIMC {
  final int hauteur;
  final double poids;
  double _IMC;

  LogiqueIMC({this.hauteur, this.poids});

  String calculIMC() {
    _IMC = poids / pow(hauteur / 100, 2);
    return _IMC.toStringAsFixed(1);
  }

  String getResultat() {
    if (_IMC >= 25.0) {
      return "Surpoids";
    } else if (_IMC > 18.5) {
      return "Normal";
    } else {
      return "Sous poids";
    }
  }

  String getInterpretation() {
    {
      if (_IMC >= 25.0) {
        return "Faites plus d'exercices !";
      } else if (_IMC > 18.5) {
        return "Super !";
      } else {
        return "Mangez un peu plus";
      }
    }
  }
}
