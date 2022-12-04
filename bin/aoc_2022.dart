import 'package:aoc_2022/extension/extension.dart';
import 'package:aoc_2022/game.dart';
import 'package:aoc_2022/input.dart';
import 'package:aoc_2022/model/model.dart';
import 'package:collection/collection.dart';

Future<void> main() async {
  await day4();
}

Future<void> day4() async {
  final List<Pair> pairs = await readPairs('bin/inputs/day4');

  print(pairs.where((e) => e.isUseless()).length);
  print(pairs.where((e) => e.overlaps()).length);
}

Future<void> day3() async {
  final List<Rucksack> rucksacks = await readRucksacks('bin/inputs/day3');

  print(rucksacks.map((e) => e.sharedItemType().priority()).sum);
  print(rucksacks
      .slices(3)
      .map((e) => e.map((e) => e.itemTypes()).intersection().first.priority())
      .sum);
}

Future<void> day2() async {
  final List<List<Shape>> shapes = await readShapes('bin/inputs/day2');
  print(shapes.map((e) => playRound(e[1], e[0])).sum);
}

Future<void> day1() async {
  final List<Elf> elves = await readElves('bin/inputs/day1');
  elves.sort((e1, e2) => e2.totalCalories() - e1.totalCalories());

  print(elves.first.totalCalories());
  print(elves.take(3).map((e) => e.totalCalories()).sum);
}
