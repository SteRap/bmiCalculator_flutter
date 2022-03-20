import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height = 0, this.weight = 0});

  final int height;

  final int weight;

  late double _bmi = double.parse(calculateBMI());

  String calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    calculateBMI();
    if (_bmi >= 25) {
      return "OVERWEIGHT";
    } else if (_bmi > 18) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String getInterpretation() {
    calculateBMI();
    if (_bmi >= 25) {
      return "Your BMI is above the normal. Should you consider to do more exercise and eat better";
    } else if (_bmi > 18.5) {
      return "Your BMI is in the normal range. Well done! Keep eating healthy and keep yourself active";
    } else {
      return "Your BMI is below the normal. Should you consider to do increase your calorie daily intake";
    }
  }
}
