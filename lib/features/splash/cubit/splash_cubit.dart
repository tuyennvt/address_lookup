import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../index.dart';
import '../../address/data/address_repository.dart';
import '../../address/models/address.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

@singleton
class SplashCubit extends Cubit<SplashState> {
  SplashCubit(this._addressRepository) : super(const SplashState());

  final AddressRepository _addressRepository;

  Future<void> init() async {
    emitSafely(state.copyWith(initDataStatus: const LoadStatus.initial()));
    final count = await _addressRepository.countAddress();
    if (count > 0) {
      emitSafely(state.copyWith(initDataStatus: const LoadStatus.loaded()));
      return;
    }
    emitSafely(state.copyWith(initDataStatus: const LoadStatus.loading()));
    final csvData = await rootBundle.loadString('assets/data/phuong_xa.csv');
    final initAddresses = await Isolate.run(() => _parseCsv(csvData));
    final success = await _addressRepository.insertAddress(initAddresses);
    if (success) {
      emitSafely(state.copyWith(initDataStatus: const LoadStatus.loaded()));
      return;
    }
    emitSafely(
      state.copyWith(
        initDataStatus: const LoadStatus.error(UnknownException()),
      ),
    );
  }
}

Future<List<Address>> _parseCsv(String rawData) async {
  final lines = rawData.split('\n');
  if (lines.isEmpty) {
    return [];
  }
  final uuid = const Uuid();
  final List<Address> addresses = [];

  // Remove header row if present
  if (lines.first.trim().isNotEmpty) {
    lines.removeAt(0);
  }

  for (final line in lines) {
    if (line.trim().isEmpty) {
      continue;
    }
    final cells = line.split(',');
    // Ensure at least 7 columns, fill missing with empty string
    final values = List<String>.generate(
      7,
      (i) => i < cells.length ? cells[i].trim() : '',
    );

    addresses.add(
      Address(
        id: uuid.v4(),
        newProvince: values[0],
        newWard: values[1],
        oldWardView: values[2],
        oldWard: values[3],
        oldDistrict: values[4],
        oldProvince: values[5],
        type: values[6],
      ),
    );
  }

  return addresses;
}
