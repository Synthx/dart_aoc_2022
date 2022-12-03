import 'package:aoc_2022/extension/extension.dart';
import 'package:test/test.dart';

void main() {
  group('String', () {
    group('splitAt(int)', () {
      test("should split into 2 list at desired index", () {
        expect("abcdef".splitAt(3), equals(["abc", "def"]));
      });
    });

    group("priority()", () {
      test("should start at 1 and end at 26 for lowercase", () {
        expect("a".priority(), 1);
        expect("z".priority(), 26);
      });

      test("should start at 27 and end at 52 for uppercase", () {
        expect("A".priority(), 27);
        expect("Z".priority(), 52);
      });
    });
  });
}
