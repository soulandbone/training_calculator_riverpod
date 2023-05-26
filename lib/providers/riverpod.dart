import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:training_calculator_riverpod/helpers/utils.dart';
import 'package:math_expressions/math_expressions.dart';
import '../models/calculator.dart';

final calculatorProvider =
    StateNotifierProvider<CalculatorNotifier, Calculator>(
        (ref) => CalculatorNotifier());

class CalculatorNotifier extends StateNotifier<Calculator> {
  CalculatorNotifier() : super(const Calculator());

  void append(String buttonText) {
    if (!state.shouldAppend) {
      final equation = buttonText;
      print('button text is $buttonText');

      state = state.copy(equation: equation, shouldAppend: true);
    } else {
      if (Utils.endsWithOperator(state.equation) &&
          Utils.isOperator(buttonText)) {
        var length = (state.equation).length;

        final newEquation =
            (state.equation).substring(0, length - 1) + buttonText;
        state = state.copy(equation: newEquation);
      } else {
        final newEquation = state.equation + buttonText;
        state = state.copy(equation: newEquation);
      }
    }

    if (state.isResult) {
      if (Utils.isOperator(buttonText)) {
        print('Got into the if');
        final newEquation = state.result + buttonText;
        state = state.copy(equation: newEquation, isResult: false);
      } else {
        print('Got into the else');
        final newEquation = buttonText;
        state = state.copy(
            equation: newEquation, result: newEquation, isResult: false);
      }
    }
  }

  void reset() {
    state = state.copy(result: '0', equation: '0', shouldAppend: false);
  }

  void delete() {
    var length = (state.equation).length;
    if (state.equation.length > 1) {
      final newEquation = (state.equation).substring(0, length - 1);
      state = state.copy(equation: newEquation);
    } else {
      reset();
    }
  }

  void calculate() {
    try {
      Parser p = Parser();
      Expression exp =
          p.parse((state.equation).replaceAll('÷', '/').replaceAll('x', '*'));

      ContextModel cm = ContextModel();

      var result = exp.evaluate(EvaluationType.REAL, cm);

      state = state.copy(result: result.toString(), isResult: true);
    } catch (e) {
      print(e);
    }
  }
}
