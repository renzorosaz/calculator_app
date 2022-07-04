import 'package:calculator_app/calculator_histories.dart';
import 'package:flutter/material.dart';

class CalculatorHistory extends StatefulWidget {
  late double width;
  late double height;
  late List<History> result = [];

  CalculatorHistory(
      {Key? key,
      required this.width,
      required this.height,
      required this.result})
      : super(key: key);

  @override
  State<CalculatorHistory> createState() => _CalculatorHistoryState();
}

class _CalculatorHistoryState extends State<CalculatorHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 200),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: widget.result.length,
          itemBuilder: (_, index) {
            return Row(
              children: [
                Text("${widget.result[index].num1} ",
                    style: const TextStyle(fontSize: 20)),
                Text("${widget.result[index].operation}",
                    style: const TextStyle(fontSize: 20)),
                Text("${widget.result[index].num2} ",
                    style: const TextStyle(fontSize: 20)),
                Text("= ${widget.result[index].resultCalculator}",
                    style: const TextStyle(fontSize: 20)),
              ],
            );
          }),
    );
  }
}
