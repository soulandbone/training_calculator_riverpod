import 'package:flutter/material.dart';
import 'package:training_calculator_riverpod/helpers/my_colors.dart';
import 'package:training_calculator_riverpod/widgets/buttons_row.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            color: myColors.background2,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonsRow('AC', '<', '', '÷'),
            ButtonsRow('7', '8', '9', 'x'),
            ButtonsRow('4', '5', '6', '-'),
            ButtonsRow('1', '2', '3', '+'),
            ButtonsRow('0', '.', '', '=')
          ],
        ));
  }
}
