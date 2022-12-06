import 'package:aoc_2022/extension/extension.dart';
import 'package:test/test.dart';

void main() {
  group("List<?>", () {
    group("removeLastElement(int)", () {
      test("should return the last n element", () {
        expect(["a", "b", "c"].removeLastElement(2), equals(["b", "c"]));
      });

      test("should remove the last n element from list", () {
        final elements = ["a", "b", "c"];
        elements.removeLastElement(2);

        expect(elements, equals(["a"]));
      });
    });
  });

  group("List<String>", () {
    group("firstIndexDifferent(int)", () {
      test(
          "should return the first position where n successive characters are different",
          () {
        expect(
            "mjqjpqmgbljsphdztnvjfqwrcgsmlb"
                .characters()
                .firstIndexDifferent(4),
            equals(7));
        expect(
            "nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg"
                .characters()
                .firstIndexDifferent(4),
            equals(10));
      });
    });
  });
}
