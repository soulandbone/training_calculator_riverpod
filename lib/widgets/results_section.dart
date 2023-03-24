import 'package:flutter/material.dart';
import 'package:training_calculator_riverpod/helpers/my_colors.dart';

class ResultsSection extends StatelessWidget {
  const ResultsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: myColors.background1,
      child: Column(children: const [Text('0'), Text('0')]),
    );
  }
}
