extension ListExtension<T> on List<T> {
  List<T> removeLastElement(int size) {
    final start = length - size;
    final end = start + size;

    final result = sublist(start, end);
    removeRange(start, end);

    return result;
  }
}

extension ListStringExtension on List<String> {
  int firstIndexDifferent(int size) {
    var end = size;
    var characters = sublist(end - size, end);
    while (characters.toSet().length != size && end != length) {
      end++;
      characters = sublist(end - size, end);
    }

    return end;
  }
}
