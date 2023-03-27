import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/calculator.dart';

final calculatorProvider =
    StateNotifierProvider<CalculatorNotifier, Calculator>(
        (ref) => CalculatorNotifier());

class CalculatorNotifier extends StateNotifier<Calculator> {
  CalculatorNotifier() : super(Calculator());

  void append(String buttonText) {
    final equation = state.equation == '0'
        ? buttonText
        : state.equation +
            buttonText; // why the callback in the example of the tutorial?

    state = state.copiar(equation: equation);
  }
}
