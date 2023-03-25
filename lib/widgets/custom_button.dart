import 'package:flutter/material.dart';
import 'package:training_calculator_riverpod/helpers/utils.dart';
import '../helpers/my_colors.dart';

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
        // case '<':
        return myColors.delete;
      default:
        return myColors.numbers;
    }
  }

  // bool isOperator(String text) {
  //   var operators = ['+', '-', 'x', '/', '='];
  //   if (operators.contains(text)) {
  //     return true;
  //   }

  //   return false;
  // }

  @override
  Widget build(BuildContext context) {
    Color buttonTextColor = getButtonColor();

    return Expanded(
      child: Container(
        height: double.infinity,
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
              backgroundColor: myColors.background3,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          child: text != '<'
              ? Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: buttonTextColor,
                      fontSize: Utils.isOperator(text) ? 12 : 26),
                )
              : const Icon(
                  Icons.backspace_outlined,
                  color: myColors.delete,
                ),
        ),
      ),
    );
  }
}
