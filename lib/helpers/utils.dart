class Utils {
  static bool isOperator(String text) {
    var operators = ['+', '-', 'x', '÷', '='];
    if (operators.contains(text)) {
      return true;
    }

    return false;
  }

  static bool endsWithOperator(String text) {
    var length = text.length;
    var lastCharacter = text.substring(length - 1, length);

    if (isOperator(lastCharacter)) {
      return true;
    }
    return false;
  }
}
