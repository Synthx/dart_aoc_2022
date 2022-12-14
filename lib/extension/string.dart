extension StringExtension on String {
  List<String> splitAt(int length) {
    return [substring(0, length), substring(length)];
  }

  List<String> characters() {
    return split('');
  }

  bool isUpperCase() {
    return this == toUpperCase();
  }

  int priority() {
    return codeUnitAt(0) - (isUpperCase() ? 38 : 96);
  }
}
