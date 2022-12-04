import 'package:aoc_2022/model/model.dart';
import 'package:test/test.dart';

void main() {
  group("Range", () {
    group("containsOther(Range)", () {
      test("should return true when containing other range", () {
        Range range1 = Range(start: 4, end: 6);
        Range range2 = Range(start: 6, end: 6);

        expect(range1.contains(range2), true);

        range1 = Range(start: 2, end: 8);
        range2 = Range(start: 3, end: 7);

        expect(range1.contains(range2), true);
      });

      test("should return false when not containing other range", () {
        Range range1 = Range(start: 2, end: 4);
        Range range2 = Range(start: 6, end: 8);

        expect(range1.contains(range2), false);

        range1 = Range(start: 2, end: 6);
        range2 = Range(start: 4, end: 8);

        expect(range1.contains(range2), false);
      });
    });

    group("overlaps(Range)", () {
      test("should return true when common sections", () {
        Range range1 = Range(start: 5, end: 7);
        Range range2 = Range(start: 7, end: 9);

        expect(range1.overlaps(range2), true);

        range1 = Range(start: 2, end: 8);
        range2 = Range(start: 3, end: 7);

        expect(range1.overlaps(range2), true);

        range1 = Range(start: 6, end: 6);
        range2 = Range(start: 4, end: 6);

        expect(range1.overlaps(range2), true);
      });

      test("should return false when no common sections", () {
        Range range1 = Range(start: 2, end: 4);
        Range range2 = Range(start: 6, end: 8);

        expect(range1.overlaps(range2), false);

        range1 = Range(start: 2, end: 3);
        range2 = Range(start: 4, end: 5);

        expect(range1.overlaps(range2), false);
      });
    });
  });
}
