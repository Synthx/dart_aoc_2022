import 'package:aoc_2022/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pair.freezed.dart';

@freezed
class Pair with _$Pair {
  const Pair._();

  const factory Pair({
    required Range firstSections,
    required Range secondSections,
  }) = _Pair;

  bool isUseless() {
    return firstSections.contains(secondSections) ||
        secondSections.contains(firstSections);
  }

  bool overlaps() {
    return firstSections.overlaps(secondSections);
  }
}
