// ignore_for_file: depend_on_referenced_packages

import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../features/address/models/address.dart';

@singleton
class LocalDatabaseService {
  late final Database database;

  Future<void> init() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'address_lookup.db');

    database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(Address.sqlCreateTable);
      },
    );
  }
}
