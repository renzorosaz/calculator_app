import 'package:calculator_app/calculation.dart';
import 'package:calculator_app/calculator_button.dart';
import 'package:calculator_app/result_display.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Scaffold(
        body: Calculation(),
      ),
    );
  }
}
