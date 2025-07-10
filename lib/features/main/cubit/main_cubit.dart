import 'dart:isolate';

import 'package:csv/csv.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../index.dart';
import '../../address/data/address_repository.dart';
import '../../address/models/address.dart';

part 'main_cubit.freezed.dart';
part 'main_state.dart';

@singleton
class MainCubit extends Cubit<MainState> {
  MainCubit(this._addressRepository) : super(const MainState());

  final AddressRepository _addressRepository;

  Future<void> init() async {
    emitSafety(state.copyWith(initDataStatus: const LoadStatus.loading()));
    final count = await _addressRepository.countAddress();
    if (count > 0) {
      emitSafety(state.copyWith(initDataStatus: const LoadStatus.loaded()));
      return;
    }
    try {
      final csvData = await rootBundle.loadString('assets/data/phuong_xa.csv');
      final initAddresses = await compute(_parseCsv, csvData);
      final success = await _addressRepository.insertAddress(initAddresses);
      if (success) {
        emitSafety(state.copyWith(initDataStatus: const LoadStatus.loaded()));
      } else {
        emitSafety(
          state.copyWith(
            initDataStatus: const LoadStatus.error(UnknownException()),
          ),
        );
      }
    } catch (error, stack) {
      CrashlyticsWrapper.log(error, stack: stack);
      emitSafety(
        state.copyWith(
          initDataStatus: const LoadStatus.error(UnknownException()),
        ),
      );
    }
  }
}

Future<List<Address>> _parseCsv(String csvData) async {
  final rows = const CsvToListConverter().convert<dynamic>(csvData);
  final uuid = const Uuid();
  return rows.map((row) {
    return Address(
      id: uuid.v4(),
      newProvince: (row[0] as String?) ?? '',
      newWard: (row[1] as String?) ?? '',
      oldWardView: (row[2] as String?) ?? '',
      oldWard: (row[3] as String?) ?? '',
      oldDistrict: (row[4] as String?) ?? '',
      oldProvince: (row[5] as String?) ?? '',
      type: (row[6] as String?) ?? '',
    );
  }).toList();
}
