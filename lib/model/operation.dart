import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation.freezed.dart';

@freezed
class Operation with _$Operation {
  const factory Operation({
    required int size,
    required int to,
    required int from,
  }) = _Operation;
}
