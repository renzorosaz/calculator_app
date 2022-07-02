import 'package:flutter/material.dart';

class ResultDisplay extends StatefulWidget {
  String text;

  ResultDisplay({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  State<ResultDisplay> createState() => _ResultDisplayState();
}

class _ResultDisplayState extends State<ResultDisplay> {
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        width: double.infinity,
        color: Colors.black,
        child: Container(
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.only(right: 24, bottom: 24),
            child: Text(
              widget.text,
              style: TextStyle(color: Colors.white, fontSize: 34),
            )));
  }
}
