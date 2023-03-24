import 'package:flutter/material.dart';
import 'package:training_calculator_riverpod/helpers/my_colors.dart';
import 'package:training_calculator_riverpod/widgets/buttons_row.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: myColors.background2,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        width: double.infinity,
        child: Column(
          children: [ButtonsRow('AC', '<', '', '/')],
        ));
  }
}
