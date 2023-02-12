import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result {
  const factory Result.success({required T data}) = Success<T>;
  const factory Result.failure({required String reason}) = Failure<T>;
}
