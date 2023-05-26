import 'package:flutter/material.dart';
import 'package:training_calculator_riverpod/helpers/my_colors.dart';
import 'package:training_calculator_riverpod/widgets/buttons_section.dart';
import 'package:training_calculator_riverpod/widgets/results_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Calculator'),
      ),
      body: SafeArea(
        child: Container(
          color: myColors.background1,
          child: const Column(children: [
            Flexible(flex: 1, child: ResultsSection()),
            Flexible(flex: 2, child: ButtonsSection())
          ]),
        ),
      ),
    );
  }
}
