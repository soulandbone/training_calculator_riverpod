import 'package:flutter/material.dart';
import 'package:training_calculator_riverpod/helpers/my_colors.dart';

class CustomButton extends StatelessWidget {
  String text;

  CustomButton({
    required this.text,
  });

  Color getButtonColor() {
    switch (text) {
      case '+':
      case '-':
      case 'x':
      case '/':
      case '=':
        return myColors.operators;
      case 'AC':
      case '<':
        return myColors.delete;
      default:
        return myColors.numbers;
    }

    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    Color buttonColor = getButtonColor();
    return ElevatedButton(
      onPressed: null,
      style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
      child: Text(
        text,
        style: TextStyle(color: buttonColor),
      ),
    );
  }
}
