import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'elf.freezed.dart';

@freezed
class Elf with _$Elf {
  const Elf._();

  const factory Elf({
    required int id,
    required List<int> calories,
  }) = _Elf;

  int totalCalories() {
    return calories.sum;
  }
}
