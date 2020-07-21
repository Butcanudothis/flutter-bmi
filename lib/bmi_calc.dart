import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BmiCalc {
  final int height;
  final int weight;
  double _bmi;
  BmiCalc({this.height, this.weight});
  String calc() {
    _bmi = weight * 10000 / (height * height);
    print('bmi is $_bmi');
    return _bmi.toStringAsFixed(1);
  }

  String resultText() {
    if (_bmi >= 25)
      return 'OVERWEIGHT';
    else if (_bmi >= 18.5)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

  Color resultColor() {
    if (_bmi >= 25)
      return Colors.pinkAccent;
    else if (_bmi >= 18.5)
      return kAccentColor;
    else
      return Colors.yellow;
  }

  String resultInt() {
    if (_bmi >= 25)
      return 'You have higher than usual body weight. Try to exercise more';
    else if (_bmi >= 18.5)
      return 'You have normal body weight. Good Job!!!';
    else
      return 'You have lower than usual body weight. Try to eat more';
  }
}
