import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../exceptions/app_exception.dart';

part 'async_value.freezed.dart';

@Freezed(genericArgumentFactories: true)
sealed class AsyncValue<T> with _$AsyncValue<T> {
  const factory AsyncValue.initial() = AsyncInitial<T>;

  const factory AsyncValue.loading() = AsyncLoading<T>;

  const factory AsyncValue.error(AppException exception) = AsyncError<T>;

  const factory AsyncValue.data(T data) = AsyncData<T>;
}

extension AsyncValueExtension<T> on AsyncValue<T> {
  bool get isLoading => switch (this) {
    AsyncInitial() => false,
    AsyncLoading() => true,
    AsyncError() => false,
    AsyncData() => false,
  };

  T? get value => switch (this) {
    AsyncInitial() => null,
    AsyncLoading() => null,
    AsyncError() => null,
    AsyncData(:final data) => data,
  };

  bool get hasData => switch (this) {
    AsyncInitial() => false,
    AsyncLoading() => false,
    AsyncError() => false,
    AsyncData() => true,
  };
}
