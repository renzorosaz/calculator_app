import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final double size;
  final Color backgroundColor;
  final Color labelColors;

  const CalculatorButton(
      {Key? key,
      required this.label,
      required this.onTap,
      required this.size,
      required this.backgroundColor,
      required this.labelColors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(6),
        alignment: Alignment.center,
        width: size,
        height: size,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 2)
            ],
            borderRadius: BorderRadius.all(Radius.circular(100 / 2)),
            color: backgroundColor),
        child: Text(label),
      ),
    );
  }
}
