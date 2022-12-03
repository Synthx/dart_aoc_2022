import 'package:freezed_annotation/freezed_annotation.dart';

part 'rucksack.freezed.dart';

@freezed
class Rucksack with _$Rucksack {
  const Rucksack._();

  const factory Rucksack({
    required List<String> firstCompartment,
    required List<String> secondCompartment,
  }) = _Rucksack;

  String sharedItemType() {
    return firstCompartment
        .toSet()
        .intersection(secondCompartment.toSet())
        .first;
  }

  Set<String> itemTypes() {
    return firstCompartment.toSet().union(secondCompartment.toSet());
  }
}
