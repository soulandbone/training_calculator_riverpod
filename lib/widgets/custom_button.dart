import 'package:flutter/material.dart';
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

  bool isOperator(String text) {
    var operators = ['+', '-', 'x', '/', '='];
    if (operators.contains(text)) {
      return true;
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    Color buttonColor = getButtonColor();
    return Container(
      height: 65,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.amber,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: text != '<'
              ? Text(
                  text,
                  style: TextStyle(
                      color: buttonColor, fontSize: isOperator(text) ? 12 : 26),
                )
              : const Icon(
                  Icons.backspace_outlined,
                  color: myColors.delete,
                )),
    );
  }
}
