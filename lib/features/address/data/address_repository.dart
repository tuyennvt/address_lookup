import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

import '../../../core/services/local_database_service.dart';
import '../../../core/utils/crashlytics_wrapper.dart';
import '../models/address.dart';

@injectable
class AddressRepository {
  AddressRepository(this._databaseService);

  final LocalDatabaseService _databaseService;

  Future<int> countAddress() async {
    try {
      return Sqflite.firstIntValue(
            await _databaseService.database.rawQuery(
              'SELECT COUNT(*) FROM ${Address.tableName}',
            ),
          ) ??
          0;
    } catch (error, stack) {
      CrashlyticsWrapper.log(error, stack: stack);
      return 0;
    }
  }

  Future<bool> insertAddress(List<Address> addresses) async {
    try {
      final batch = _databaseService.database.batch();
      for (final address in addresses) {
        batch.insert(
          Address.tableName,
          address.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }
      await batch.commit(noResult: true, continueOnError: true);
      return true;
    } catch (error, stack) {
      CrashlyticsWrapper.log(error, stack: stack);
      return false;
    }
  }

  Future<List<String>> getOldProvinces() async {
    try {
      final result = await _databaseService.database.rawQuery(
        'SELECT DISTINCT ${'old_province'} FROM ${Address.tableName}',
      );
      return result.map((e) => e['old_province'] as String).toList();
    } catch (error, stack) {
      CrashlyticsWrapper.log(error, stack: stack);
      return [];
    }
  }

  Future<List<String>> getOldDistricts(String oldProvince) async {
    try {
      final result = await _databaseService.database.rawQuery(
        'SELECT DISTINCT ${'old_district'} FROM ${Address.tableName} WHERE ${'old_province'} = ?',
        [oldProvince],
      );
      return result.map((e) => e['old_district'] as String).toList();
    } catch (error, stack) {
      CrashlyticsWrapper.log(error, stack: stack);
      return [];
    }
  }

  Future<List<String>> getOldWards(String oldDistrict) async {
    try {
      final result = await _databaseService.database.rawQuery(
        'SELECT DISTINCT ${'old_ward'} FROM ${Address.tableName} WHERE ${'old_district'} = ?',
        [oldDistrict],
      );
      return result.map((e) => e['old_ward'] as String).toList();
    } catch (error, stack) {
      CrashlyticsWrapper.log(error, stack: stack);
      return [];
    }
  }

  Future<List<Address>> getNewAddresss({
    required String oldProvince,
    required String oldDistrict,
    required String oldWard,
  }) async {
    try {
      final result = await _databaseService.database.rawQuery(
        'SELECT * FROM ${Address.tableName} WHERE '
        '${'old_province'} = ? AND '
        '${'old_district'} = ? AND '
        '${'old_ward'} = ?',
        [oldProvince, oldDistrict, oldWard],
      );
      if (result.isNotEmpty) {
        return result.map((e) => Address.fromJson(e)).toList();
      }
      return [];
    } catch (error, stack) {
      CrashlyticsWrapper.log(error, stack: stack);
      return [];
    }
  }

  Future<List<Address>> search(
    String query, {
    int page = 1,
    int limit = 100,
  }) async {
    try {
      if (query.trim().isEmpty) {
        return [];
      }

      final searchQuery = '%${query.trim()}%';
      final offset = (page - 1) * limit;

      final result = await _databaseService.database.rawQuery(
        'SELECT * FROM ${Address.tableName} WHERE '
        'old_province LIKE ? COLLATE NOCASE OR '
        'old_district LIKE ? COLLATE NOCASE OR '
        'old_ward LIKE ? COLLATE NOCASE OR '
        'new_province LIKE ? COLLATE NOCASE OR '
        'new_ward LIKE ? COLLATE NOCASE '
        'ORDER BY old_province, old_district, old_ward '
        'LIMIT ? OFFSET ?',
        [
          searchQuery,
          searchQuery,
          searchQuery,
          searchQuery,
          searchQuery,
          limit,
          offset,
        ],
      );

      if (result.isNotEmpty) {
        return result.map((e) => Address.fromJson(e)).toList();
      }
      return [];
    } catch (error, stack) {
      CrashlyticsWrapper.log(error, stack: stack);
      return [];
    }
  }
}
