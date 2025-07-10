import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
sealed class Result<E, D> with _$Result<E, D> {
  const factory Result.error(E exception) = ResultError;

  const factory Result.success(D data) = ResultSuccess;
}
