part of 'main_cubit.dart';

@freezed
abstract class MainState with _$MainState {
  const factory MainState({
    @Default(LoadStatus.initial()) LoadStatus initDataStatus,
  }) = _MainState;
}
