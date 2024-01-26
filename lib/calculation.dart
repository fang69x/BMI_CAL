import 'dart:math';

class Calculation {
  Calculation({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0.0;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OvervWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return "Under Weight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You goota eat less buddy';
    } else if (_bmi > 18.5) {
      return 'You are good Chill';
    } else {
      return "You gotta eat more buddy";
    }
  }
}
