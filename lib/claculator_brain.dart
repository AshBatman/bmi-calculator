import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({this.weight, this.height});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getInterpretation() {
    if(_bmi >= 25) {
      return "You have higher than normal body weight. Try to exercise more.";
    } else if (_bmi > 18.5) {
      return "You have normal body weight. Good job!";
    } else {
      return "You have lower than usual body weight. You can eat a bit more.";
    }
  }

}