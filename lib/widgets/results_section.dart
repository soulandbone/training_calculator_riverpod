import 'package:flutter/material.dart';
import 'package:training_calculator_riverpod/helpers/my_colors.dart';

class ResultsSection extends StatelessWidget {
  const ResultsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      width: double.infinity,
      //color: Colors.amber,
      color: myColors.background1,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text(
              '0',
              style: TextStyle(color: myColors.numbers, fontSize: 36),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '0',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            )
          ]),
    );
  }
}
