part of 'main_cubit.dart';

@freezed
abstract class MainState with _$MainState {
  const factory MainState({
    @Default([]) List<String> oldProvinces,
    @Default('') String selectedOldProvince,
    @Default([]) List<String> oldDistricts,
    @Default('') String selectedOldDistrict,
    @Default([]) List<String> oldWards,
    @Default('') String selectedOldWard,
    @Default([]) List<Address> newAddresses,
  }) = _MainState;
}
