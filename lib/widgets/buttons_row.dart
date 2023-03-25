import 'package:flutter/material.dart';
import 'package:training_calculator_riverpod/widgets/custom_button.dart';

class ButtonsRow extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  String text4;

  ButtonsRow(this.text1, this.text2, this.text3, this.text4);

  @override
  Widget build(BuildContext context) {
    final row = [text1, text2, text3, text4];

    return Expanded(
      child: Row(
          children: row.map((text) {
        return CustomButton(
          text: text,
        );
      }).toList()),
    );
  }
}
