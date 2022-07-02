class History {
  final double num1;
  double? num2;
  String? resultCalculator;
  final String operation;
  final List<History> lstHistories;
  late double result;

  History(
      {required this.num1,
      this.num2,
      this.resultCalculator,
      required this.operation,
      this.lstHistories = const []});

  double multiply(num1, num2) {
    result = num1 * num2;
    return result;
  }

  double add(num1, num2) {
    result = num1 + num2;
    return result;
  }

  double split(num1, num2) {
    result = num1 / num2;
    return result;
  }

  double rest(num1, num2) {
    result = num1 / num2;
    return result;
  }
}
