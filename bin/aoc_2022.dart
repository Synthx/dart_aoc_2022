import 'package:aoc_2022/extension/extension.dart';
import 'package:aoc_2022/game.dart';
import 'package:aoc_2022/input.dart';
import 'package:aoc_2022/model/model.dart';

Future<void> main(List<String> arguments) async {
  final List<List<Shape>> shapes = await readShapes('bin/inputs/day2');
  print(shapes.map((e) => playRound(e[1], e[0])).sum());
}

Future<void> day1(List<String> arguments) async {
  final List<Elf> elves = await readElves('bin/inputs/day1');
  elves.sort((e1, e2) => e2.totalCalories() - e1.totalCalories());

  // day 1 - part 1
  print(elves.first.totalCalories());
  // day 1 - part 2
  print(elves.take(3).map((e) => e.totalCalories()).sum());
}
