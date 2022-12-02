import 'package:aoc_2022/extension/extension.dart';
import 'package:test/test.dart';

void main() {
  group("Iterable", () {
    group("Iterable<int>", () {
      test("sum() should return the sum of the list", () {
        expect([1, 5, 6, 10].sum(), 22);
      });
    });
  });
}
