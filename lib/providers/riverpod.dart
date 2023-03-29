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
    //print('Ends with operator is ${Utils.endsWithOperator(state.equation)}');
    //print('button is operator is ${Utils.isOperator(buttonText)}');
    if (Utils.endsWithOperator(state.equation) &&
        Utils.isOperator(buttonText)) {
      var length = (state.equation).length;

      final newEquation =
          (state.equation).substring(0, length - 1) + buttonText;
      state = state.copy(equation: newEquation);
    } else {
      final equation = state.equation == '0'
          ? buttonText
          : state.equation +
              buttonText; // why the callback in the example of the tutorial?

      state = state.copy(equation: equation);
    }
  }

  void reset() {
    state = state.copy(result: '0', equation: '0');
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

      state = state.copy(result: result.toString());
    } catch (e) {
      print(e);
    }
    ;
  }
}
