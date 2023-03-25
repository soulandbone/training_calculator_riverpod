class Utils {
  static bool isOperator(String text) {
    var operators = ['+', '-', 'x', '/', '='];
    if (operators.contains(text)) {
      return true;
    }

    return false;
  }
}
