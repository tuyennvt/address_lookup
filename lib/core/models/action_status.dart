import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../exceptions/app_exception.dart';

part 'action_status.freezed.dart';

@Freezed(genericArgumentFactories: true)
sealed class ActionStatus<T> with _$ActionStatus<T> {
  const factory ActionStatus.processing() = ActionProcessing<T>;

  const factory ActionStatus.error(AppException exception) = ActionError<T>;

  const factory ActionStatus.success([T? data]) = ActionSuccess<T>;

  const factory ActionStatus.none() = ActionNone<T>;
}
