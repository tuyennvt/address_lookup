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
}
