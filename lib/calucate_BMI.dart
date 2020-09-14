
import 'dart:math';

class CalculateBMI {
  CalculateBMI({this.weight,this.height});
  final int  height;
  final int weight;

  double _bmi;

  String calculate() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);

  }

  String getResults() {
    if (_bmi > 25) {
      return 'Overweight';
    }
    else if (_bmi > 18.5) {
      return 'Normal';
    }
    else {
      return 'Underweight';
    }
  }
  String getInterpretation () {
    if (_bmi > 25) {
      return 'You have a higher than normal body weight. Try to exercise more';
    }
    else if (_bmi > 18.5) {
      return 'You have a normal body weight. ';
    }
    else {
      return 'You have a lower body weight. You need to gain more weight';
    }

  }
}
