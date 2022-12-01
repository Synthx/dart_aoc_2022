import 'package:aoc_2022/data/data.dart';
import 'package:aoc_2022/extension/iterable.dart';
import 'package:aoc_2022/input.dart';

Future<void> main(List<String> arguments) async {
  List<Elf> elves = await readElves('bin/inputs/day1');
  elves.sort((e1, e2) => e2.totalCalories() - e1.totalCalories());

  // day 1 - part 1
  print(elves[0].totalCalories());
  // day 1 - part 2
  print(elves.sublist(0, 3).map((e) => e.totalCalories()).sum());
}
