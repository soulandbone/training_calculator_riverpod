import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:training_calculator_riverpod/helpers/my_colors.dart';
import '../providers/riverpod.dart';

class ResultsSection extends ConsumerWidget {
  const ResultsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calculator = ref.watch(calculatorProvider);

    return Container(
      padding: const EdgeInsets.all(25),
      width: double.infinity,
      //color: Colors.amber,
      color: myColors.background1,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              calculator.equation,
              style: TextStyle(color: myColors.numbers, fontSize: 36),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '0',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            )
          ]),
    );
  }
}
