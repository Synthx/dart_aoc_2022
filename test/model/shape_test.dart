import 'package:aoc_2022/model/model.dart';
import 'package:test/test.dart';

void main() {
  group("Shape", () {
    test("from(String) should return corresponding shapes", () {
      expect(Shape.from("A"), Shape.rock);
      expect(Shape.from("B"), Shape.paper);
      expect(Shape.from("C"), Shape.scissors);
    });

    group("win(Shape)", () {
      test("should return null when draw", () {
        expect(Shape.scissors.win(Shape.scissors), null);
      });

      test("should return true when winning", () {
        expect(Shape.paper.win(Shape.rock), true);
      });

      test("should return false when loosing", () {
        expect(Shape.rock.win(Shape.paper), false);
      });
    });

    group("guide(String)", () {
      test("should return loosing shape when 'X' is passed", () {
        expect(Shape.paper.guide('X'), Shape.rock);
      });

      test("should return same shape when 'Y' is passed", () {
        expect(Shape.rock.guide('Y'), Shape.rock);
      });

      test("should return winning shape when 'Z' is passed", () {
        expect(Shape.scissors.guide('Z'), Shape.rock);
      });
    });
  });
}
