import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:training_calculator_riverpod/helpers/utils.dart';
import 'package:training_calculator_riverpod/providers/riverpod.dart';
import '../helpers/my_colors.dart';

class CustomButton extends ConsumerWidget {
  String text;
  VoidCallback onClicked;

  CustomButton({required this.text, required this.onClicked});

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
  Widget build(BuildContext context, WidgetRef ref) {
    Color buttonTextColor = getButtonColor();
    final calculator = ref.read(calculatorProvider.notifier);

    void onClickedButton(String buttonText) {
      calculator.append(buttonText);
    }

    return Expanded(
      child: Container(
        height: double.infinity,
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
          onPressed: () => onClickedButton(text),
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
