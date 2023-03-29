import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/custom_button.dart';
import '../providers/riverpod.dart';

class ButtonsRow extends ConsumerWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const ButtonsRow(this.text1, this.text2, this.text3, this.text4, {super.key});

  void onClickedButton(String buttonText, WidgetRef ref) {
    final calculator = ref.read(calculatorProvider.notifier);
    switch (buttonText) {
      case 'AC':
        calculator.reset();
        break;
      case '<':
        calculator.delete();
        break;
      case '=':
        calculator.calculate();
        break;
      default:
        calculator.append(buttonText);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final row = [text1, text2, text3, text4];

    return Expanded(
      child: Row(
          children: row.map((text) {
        return CustomButton(
          text: text,
          onClicked: () => onClickedButton(text, ref),
        );
      }).toList()),
    );
  }
}
