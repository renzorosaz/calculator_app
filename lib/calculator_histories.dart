class History {
  final double? num1;
  double? num2;
  String? resultCalculator;
  final String? operation;
  final List<History>? lstHistories;

  History(
      {required this.num1,
      this.num2,
      this.resultCalculator,
      required this.operation,
      this.lstHistories = const []});

  String? multiply(num1, num2) {
    resultCalculator =
        double.parse((num1 * num2).toString()).toStringAsFixed(2);
    return resultCalculator;
  }

  String? add(num1, num2) {
    resultCalculator =
        double.parse((num1 + num2).toString()).toStringAsFixed(2);
    return resultCalculator;
  }

  String? split(num1, num2) {
    resultCalculator =
        double.parse((num1 / num2).toString()).toStringAsFixed(2);
    return resultCalculator;
  }

  String? rest(num1, num2) {
    resultCalculator =
        double.parse((num1 - num2).toString()).toStringAsFixed(2);
    return resultCalculator;
  }
}
