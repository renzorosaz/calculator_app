import 'package:flutter/material.dart';

class CalculatorHistory extends StatefulWidget {
  late double width;
  late double height;
  List<String> result = [];

  CalculatorHistory(
      {Key? key, required this.width, required this.height, required result})
      : super(key: key);

  @override
  State<CalculatorHistory> createState() => _CalculatorHistoryState();
}

class _CalculatorHistoryState extends State<CalculatorHistory> {
  @override
  void initState() {
    print(widget.result);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: widget.width * 0.08, top: widget.height * 0.02),
      alignment: Alignment.bottomRight,
      child: Column(
        children: [
          Container(
              child: Text(
            "0",
            style: TextStyle(fontSize: 35),
          )),
        ],
      ),
    );
  }
}
