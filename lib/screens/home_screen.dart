import 'package:flutter/material.dart';
import 'package:training_calculator_riverpod/helpers/my_colors.dart';
import 'package:training_calculator_riverpod/widgets/buttons_section.dart';
import 'package:training_calculator_riverpod/widgets/results_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Container(
        color: myColors.background1,
        child: Column(children: const [
          Flexible(flex: 1, child: ResultsSection()),
          Flexible(flex: 2, child: ButtonsSection())
        ]),
      ),
    ));
  }
}
