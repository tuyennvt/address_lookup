part of 'splash_cubit.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState({
    @Default(LoadStatus.initial()) LoadStatus initDataStatus,
  }) = _SplashState;
}
