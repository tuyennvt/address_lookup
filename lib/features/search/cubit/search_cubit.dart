import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../index.dart';
import '../../address/data/address_repository.dart';
import '../../address/models/address.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

@lazySingleton
class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._addressRepository) : super(const SearchState());

  final AddressRepository _addressRepository;

  void search(String query) async {
    final addresses = await _addressRepository.search(query);
    emitSafely(state.copyWith(addresses: addresses, searchQuery: query));
  }

  void clear() {
    emitSafely(state.copyWith(addresses: [], searchQuery: ''));
  }
}
