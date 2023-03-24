class Utils {
  static bool isOperator(String text) {
    var operators = ['+', '-', '*', '/'];
    if (operators.contains(text)) {
      return true;
    }

    return false;
  }
}
