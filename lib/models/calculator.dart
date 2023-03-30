class Calculator {
  final bool shouldAppend;
  final bool isResult;
  final String equation;
  final String result;

  const Calculator(
      {this.shouldAppend = false,
      this.equation = '0',
      this.result = '0',
      this.isResult = false});

  Calculator copy({
    bool? shouldAppend,
    String? equation,
    String? result,
    bool? isResult,
  }) =>
      Calculator(
          shouldAppend: shouldAppend ?? this.shouldAppend,
          equation: equation ?? this.equation,
          result: result ?? this.result,
          isResult: isResult ?? this.isResult);
}
