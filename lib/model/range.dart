import 'package:freezed_annotation/freezed_annotation.dart';

part 'range.freezed.dart';

@freezed
class Range with _$Range {
  const Range._();

  const factory Range({
    required int start,
    required int end,
  }) = _Range;

  bool contains(Range other) {
    return start <= other.start && end >= other.end;
  }

  bool overlaps(Range other) {
    return start <= other.start && end >= other.start ||
        other.start <= start && other.end >= start;
  }
}
