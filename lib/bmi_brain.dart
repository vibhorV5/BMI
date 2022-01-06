import 'dart:math';

class BmiBrain {
  BmiBrain({required this.height, required this.weight});

  double _bmi = 1;

  final int height;
  final int weight;

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your BMI is quite high, Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'Your BMI is normal.';
    } else {
      return 'YOur BMI is quite low, Try to eat and lift more.';
    }
  }
}
