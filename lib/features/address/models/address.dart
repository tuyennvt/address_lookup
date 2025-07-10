import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
abstract class Address with _$Address {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Address({
    @Default('') String id,
    @Default('') String newProvince,
    @Default('') String newWard,
    @Default('') String oldProvince,
    @Default('') String oldDistrict,
    @Default('') String oldWard,
    @Default('') String oldWardView,
    @Default('') String type,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  const Address._();

  static const tableName = 'address';

  static const sqlCreateTable =
      '''
CREATE TABLE IF NOT EXISTS $tableName (
  id TEXT PRIMARY KEY,
  new_province TEXT,
  new_ward TEXT,
  old_province TEXT,
  old_district TEXT,
  old_ward TEXT,
  old_ward_view TEXT,
  type TEXT
);
''';
}
