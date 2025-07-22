part of 'search_cubit.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    @Default('') String searchQuery,
    @Default([]) List<Address> addresses,
  }) = _SearchState;
}
