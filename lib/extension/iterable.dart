extension IterableSetExtension<T> on Iterable<Set<T>> {
  Set<T> intersection() {
    return reduce((value, element) => value.intersection(element));
  }
}
