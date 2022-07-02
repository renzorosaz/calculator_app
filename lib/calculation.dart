import 'package:calculator_app/calculator_button.dart';
import 'package:calculator_app/result_display.dart';
import 'package:flutter/material.dart';

class Calculation extends StatefulWidget {
  Calculation({Key? key}) : super(key: key);

  @override
  State<Calculation> createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  late double width;
  String resultCalculator = "0";
  late double num1;
  String operator = "";

  List<String> history = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    width = MediaQuery.of(context).size.width;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        ResultDisplay(text: resultCalculator),
        Row(
          children: [
            _getButton(
              onTap: () => numberPressed(7),
              text: '7',
            ),
            _getButton(
              onTap: () => numberPressed(8),
              text: '8',
            ),
            _getButton(
              onTap: () => numberPressed(9),
              text: '9',
            ),
            _getButton(
                onTap: () => operatorPressed("x"),
                text: 'x',
                backgroundColor: Colors.grey),
          ],
        ),
        Row(
          children: [
            _getButton(text: '4', onTap: () => numberPressed(4)),
            _getButton(text: '5', onTap: () => numberPressed(5)),
            _getButton(text: '6', onTap: () => numberPressed(6)),
            _getButton(
              text: '/',
              onTap: () => operatorPressed("/"),
              backgroundColor: const Color.fromRGBO(220, 220, 220, 1),
            ),
          ],
        ),
        Row(
          children: [
            _getButton(text: '1', onTap: () => numberPressed(1)),
            _getButton(text: '2', onTap: () => numberPressed(2)),
            _getButton(text: '3', onTap: () => numberPressed(3)),
            _getButton(
              text: '+',
              onTap: () => operatorPressed("+"),
              backgroundColor: const Color.fromRGBO(220, 220, 220, 1),
            )
          ],
        ),
        Row(
          children: [
            _getButton(
              text: '=',
              onTap: () => obtainResult(),
              backgroundColor: Colors.orange,
              textColor: Colors.white,
            ),
            _getButton(text: '0', onTap: () => numberPressed(0)),
            _getButton(
              text: 'C',
              onTap: clean,
              backgroundColor: const Color.fromRGBO(220, 220, 220, 1),
            ),
            _getButton(
              text: '-',
              onTap: () => operatorPressed("-"),
              backgroundColor: const Color.fromRGBO(220, 220, 220, 1),
            ),
          ],
        ),
        SizedBox(height: width * 0.02),
        // Expanded(
        //   child: ListView(
        //     padding: const EdgeInsets.only(left: 190, top: 80),
        //     children: [for (String item in history) Text('${item}')],
        //   ),
        // )
      ],
    ));
  }

  void clean() {
    setState(() {
      resultCalculator = "0";
    });
  }

  void obtainResult() {
    double? num2 = double.tryParse(resultCalculator);
    setState(() {
      if (operator == 'x') {
        resultCalculator = (num1 * num2!).toString();
      }
    });
  }

  operatorPressed(String op) {
    num1 = double.tryParse(resultCalculator)!;
    operator = op;
    //history.add(num1.toString() + " " + op);
    clean();
  }

  numberPressed(int value) {
    setState(() {
      if (resultCalculator == "0") {
        resultCalculator = value.toString();
      } else {
        resultCalculator += value.toString();
      }
    });
  }

  Widget _getButton(
      {required String text,
      required VoidCallback onTap,
      Color backgroundColor = Colors.white,
      Color textColor = Colors.black}) {
    return CalculatorButton(
      backgroundColor: backgroundColor,
      label: text,
      onTap: onTap,
      labelColors: Colors.black,
      size: width / 4 - 12,
    );
  }
}
