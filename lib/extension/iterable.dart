extension IntIterableExtension on Iterable<int> {
  int sum() {
    return fold(0, (curr, acc) => curr + acc);
  }
}
