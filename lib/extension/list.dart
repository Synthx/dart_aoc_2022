extension ListExtension<T> on List<T> {
  List<T> removeLastElement(int size) {
    final start = length - size;
    final end = start + size;

    final result = sublist(start, end);
    removeRange(start, end);

    return result;
  }
}
