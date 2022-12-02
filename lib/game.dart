import 'package:aoc_2022/model/model.dart';

int playRound(Shape choice, Shape against) {
  final bool? winning = choice.win(against);
  final int score = choice.index + 1;

  // draw
  if (winning == null) {
    return score + 3;
  }

  // winning
  if (winning) {
    return score + 6;
  }

  // losing
  return score;
}
