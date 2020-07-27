import 'dart:math';

class CaliculatorBrain {
  CaliculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String caliculatorBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.0) {
      return 'Over Weight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String getInterprotation() {
    if (_bmi >= 25.0) {
      return 'You have a higher than nomal body weight. Try to exercise more!';
    } else if (_bmi > 18.5) {
      return 'You hava a nomal body weight. Good job!';
    } else {
      return 'You have a lower than nomal body weight. You can eat a bit more';
    }
  }
}
