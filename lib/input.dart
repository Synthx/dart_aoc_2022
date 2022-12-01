import 'dart:io';

import 'data/data.dart';

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
