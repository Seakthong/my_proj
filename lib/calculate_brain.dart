import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = this.weight / pow(this.height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (this._bmi >= 25) {
      return 'Overweight';
    } else if (this._bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (this._bmi >= 25) {
      return 'Try to excercise more';
    } else if (this._bmi > 18.5) {
      return 'Good Job.';
    } else {
      return 'You can eat abit more.';
    }
  }
}
