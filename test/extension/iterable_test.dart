import 'package:aoc_2022/extension/extension.dart';
import 'package:test/test.dart';

void main() {
  group("Iterable<Set<?>>", () {
    group("intersection()", () {
      test("should return the intersection of all sets", () {
        expect(
            [
              {"a", "b", "c"},
              {"c", "d"},
              {"a", "c", "e"}
            ].intersection(),
            equals({"c"}));
      });
    });
  });
}
