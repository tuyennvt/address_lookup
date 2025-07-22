part of 'main_cubit.dart';

@freezed
abstract class MainState with _$MainState {
  const factory MainState({required int navIndex}) = _MainState;
}
