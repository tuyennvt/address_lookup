import 'package:freezed_annotation/freezed_annotation.dart';

import '../exceptions/app_exception.dart';

part 'load_status.freezed.dart';

@freezed
sealed class LoadStatus with _$LoadStatus {
  const factory LoadStatus.initial() = LoadInitial;

  const factory LoadStatus.loading() = LoadLoading;

  const factory LoadStatus.error(AppException exception) = LoadError;

  const factory LoadStatus.loaded() = LoadLoaded;
}

extension LoadStatusX on LoadStatus {
  bool get isInitial => this is LoadInitial;

  bool get isLoading => this is LoadLoading;

  bool get isError => this is LoadError;

  bool get isLoaded => this is LoadLoaded;
}
