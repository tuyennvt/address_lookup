// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Address _$AddressFromJson(Map<String, dynamic> json) => _Address(
  id: json['id'] as String? ?? '',
  newProvince: json['new_province'] as String? ?? '',
  newWard: json['new_ward'] as String? ?? '',
  oldProvince: json['old_province'] as String? ?? '',
  oldDistrict: json['old_district'] as String? ?? '',
  oldWard: json['old_ward'] as String? ?? '',
  oldWardView: json['old_ward_view'] as String? ?? '',
  type: json['type'] as String? ?? '',
);

Map<String, dynamic> _$AddressToJson(_Address instance) => <String, dynamic>{
  'id': instance.id,
  'new_province': instance.newProvince,
  'new_ward': instance.newWard,
  'old_province': instance.oldProvince,
  'old_district': instance.oldDistrict,
  'old_ward': instance.oldWard,
  'old_ward_view': instance.oldWardView,
  'type': instance.type,
};
