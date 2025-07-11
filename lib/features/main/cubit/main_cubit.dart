import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/core.dart';
import '../../address/data/address_repository.dart';
import '../../address/models/address.dart';

part 'main_cubit.freezed.dart';
part 'main_state.dart';

@lazySingleton
class MainCubit extends Cubit<MainState> {
  MainCubit(this._addressRepository) : super(const MainState());

  final AddressRepository _addressRepository;

  Future<void> loadOldProvinces() async {
    final oldProvinces = await _addressRepository.getOldProvinces();
    emitSafely(state.copyWith(oldProvinces: oldProvinces));
  }

  void selectOldProvince(String oldProvince) {
    emitSafely(
      state.copyWith(
        selectedOldProvince: oldProvince,
        selectedOldDistrict: '',
        selectedOldWard: '',
        newAddresses: [],
      ),
    );
  }

  Future<void> loadOldDistricts(String oldProvince) async {
    final oldDistricts = await _addressRepository.getOldDistricts(oldProvince);
    emitSafely(state.copyWith(oldDistricts: oldDistricts));
  }

  void selectOldDistrict(String oldDistrict) {
    emitSafely(
      state.copyWith(
        selectedOldDistrict: oldDistrict,
        selectedOldWard: '',
        newAddresses: [],
      ),
    );
  }

  Future<void> loadOldWards(String oldDistrict) async {
    final oldWards = await _addressRepository.getOldWards(oldDistrict);
    emitSafely(state.copyWith(oldWards: oldWards));
  }

  void selectOldWard(String oldWard) {
    emitSafely(state.copyWith(selectedOldWard: oldWard));
    loadNewAddresses();
  }

  Future<void> loadNewAddresses() async {
    final addresses = await _addressRepository.getNewAddresss(
      oldProvince: state.selectedOldProvince,
      oldDistrict: state.selectedOldDistrict,
      oldWard: state.selectedOldWard,
    );
    emitSafely(state.copyWith(newAddresses: addresses));
  }
}
