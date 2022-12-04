import 'dart:io';

import 'package:aoc_2022/extension/extension.dart';
import 'package:aoc_2022/model/model.dart';

Future<List<Elf>> readElves(String filePath) async {
  final file = File(filePath);
  final content = await file.readAsString();

  int id = 1;
  return content.split('\n\n').map((s) {
    final calories = s
        .split('\n')
        .map((calories) => int.parse(calories))
        .toList(growable: false);

    return Elf(
      id: ++id,
      calories: calories,
    );
  }).toList(growable: false);
}

Future<List<List<Shape>>> readShapes(String filePath) async {
  final file = File(filePath);
  final lines = await file.readAsLines();

  return lines.map((e) {
    final shapes = e.split(' ');
    final against = Shape.from(shapes[0]);

    return [against, against.guide(shapes[1])];
  }).toList(growable: false);
}

Future<List<Rucksack>> readRucksacks(String filePath) async {
  final file = File(filePath);
  final lines = await file.readAsLines();

  return lines.map((e) {
    final int middle = e.length ~/ 2;
    final compartments = e.splitAt(middle);

    return Rucksack(
      firstCompartment: compartments[0].split(''),
      secondCompartment: compartments[1].split(''),
    );
  }).toList(growable: false);
}

Future<List<Pair>> readPairs(String filePath) async {
  final file = File(filePath);
  final lines = await file.readAsLines();

  return lines.map((e) {
    final sections = e.split(',');
    final firstSections =
        sections[0].split('-').map((e) => int.parse(e)).toList(growable: false);
    final secondSections =
        sections[1].split('-').map((e) => int.parse(e)).toList(growable: false);

    return Pair(
      firstSections: Range(
        start: firstSections[0],
        end: firstSections[1],
      ),
      secondSections: Range(
        start: secondSections[0],
        end: secondSections[1],
      ),
    );
  }).toList(growable: false);
}
