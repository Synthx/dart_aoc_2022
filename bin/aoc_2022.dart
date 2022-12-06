import 'package:aoc_2022/extension/extension.dart';
import 'package:aoc_2022/game.dart';
import 'package:aoc_2022/input.dart';
import 'package:aoc_2022/model/model.dart';
import 'package:collection/collection.dart';

Future<void> main() async {
  await day6();
}

Future<void> day6() async {
  final List<String> buffer = await readBuffer('bin/inputs/day6');

  print(buffer.firstIndexDifferent(4));
  print(buffer.firstIndexDifferent(14));
}

Future<void> day5() async {
  final List<List<String>> stacks = await readStacks('bin/inputs/day5');
  final List<Operation> operations = await readOperations('bin/inputs/day5');

  for (final operation in operations) {
    final crates = stacks[operation.from].removeLastElement(operation.size);
    // part 1 : stacks[operation.to].addAll(crates.reversed);
    stacks[operation.to].addAll(crates);
  }

  print(stacks.map((e) => e.last).join(''));
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
