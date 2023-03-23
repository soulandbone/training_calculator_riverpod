import 'package:flutter/material.dart';
import 'package:training_calculator_riverpod/widgets/buttons_section.dart';
import 'package:training_calculator_riverpod/widgets/results_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Your app'),
      ),
      body: Container(
        color: Colors.black45,
        child: Column(children: const [
          Flexible(flex: 1, child: ResultsSection()),
          Flexible(flex: 2, child: ButtonsSection())
        ]),
      ),
    ));
  }
}
