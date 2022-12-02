import 'package:aoc_2022/game.dart';
import 'package:aoc_2022/model/model.dart';
import 'package:test/test.dart';

void main() {
  group("Game", () {
    group("playRound(Shape, Shape)", () {
      test("should return 8 when winning with paper", () {
        expect(playRound(Shape.paper, Shape.rock), 8);
      });

      test("should return 1 when loosing with rock", () {
        expect(playRound(Shape.rock, Shape.paper), 1);
      });

      test("should return 6 when draw with scissors", () {
        expect(playRound(Shape.scissors, Shape.scissors), 6);
      });
    });
  });
}
