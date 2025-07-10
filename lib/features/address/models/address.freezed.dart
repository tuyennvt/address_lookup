// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Address implements DiagnosticableTreeMixin {

 String get id; String get newProvince; String get newWard; String get oldProvince; String get oldDistrict; String get oldWard; String get oldWardView; String get type;
/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressCopyWith<Address> get copyWith => _$AddressCopyWithImpl<Address>(this as Address, _$identity);

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Address'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('newProvince', newProvince))..add(DiagnosticsProperty('newWard', newWard))..add(DiagnosticsProperty('oldProvince', oldProvince))..add(DiagnosticsProperty('oldDistrict', oldDistrict))..add(DiagnosticsProperty('oldWard', oldWard))..add(DiagnosticsProperty('oldWardView', oldWardView))..add(DiagnosticsProperty('type', type));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Address&&(identical(other.id, id) || other.id == id)&&(identical(other.newProvince, newProvince) || other.newProvince == newProvince)&&(identical(other.newWard, newWard) || other.newWard == newWard)&&(identical(other.oldProvince, oldProvince) || other.oldProvince == oldProvince)&&(identical(other.oldDistrict, oldDistrict) || other.oldDistrict == oldDistrict)&&(identical(other.oldWard, oldWard) || other.oldWard == oldWard)&&(identical(other.oldWardView, oldWardView) || other.oldWardView == oldWardView)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,newProvince,newWard,oldProvince,oldDistrict,oldWard,oldWardView,type);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Address(id: $id, newProvince: $newProvince, newWard: $newWard, oldProvince: $oldProvince, oldDistrict: $oldDistrict, oldWard: $oldWard, oldWardView: $oldWardView, type: $type)';
}


}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res>  {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) = _$AddressCopyWithImpl;
@useResult
$Res call({
 String id, String newProvince, String newWard, String oldProvince, String oldDistrict, String oldWard, String oldWardView, String type
});




}
/// @nodoc
class _$AddressCopyWithImpl<$Res>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._self, this._then);

  final Address _self;
  final $Res Function(Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? newProvince = null,Object? newWard = null,Object? oldProvince = null,Object? oldDistrict = null,Object? oldWard = null,Object? oldWardView = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,newProvince: null == newProvince ? _self.newProvince : newProvince // ignore: cast_nullable_to_non_nullable
as String,newWard: null == newWard ? _self.newWard : newWard // ignore: cast_nullable_to_non_nullable
as String,oldProvince: null == oldProvince ? _self.oldProvince : oldProvince // ignore: cast_nullable_to_non_nullable
as String,oldDistrict: null == oldDistrict ? _self.oldDistrict : oldDistrict // ignore: cast_nullable_to_non_nullable
as String,oldWard: null == oldWard ? _self.oldWard : oldWard // ignore: cast_nullable_to_non_nullable
as String,oldWardView: null == oldWardView ? _self.oldWardView : oldWardView // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Address].
extension AddressPatterns on Address {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Address value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Address value)  $default,){
final _that = this;
switch (_that) {
case _Address():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Address value)?  $default,){
final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String newProvince,  String newWard,  String oldProvince,  String oldDistrict,  String oldWard,  String oldWardView,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.id,_that.newProvince,_that.newWard,_that.oldProvince,_that.oldDistrict,_that.oldWard,_that.oldWardView,_that.type);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String newProvince,  String newWard,  String oldProvince,  String oldDistrict,  String oldWard,  String oldWardView,  String type)  $default,) {final _that = this;
switch (_that) {
case _Address():
return $default(_that.id,_that.newProvince,_that.newWard,_that.oldProvince,_that.oldDistrict,_that.oldWard,_that.oldWardView,_that.type);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String newProvince,  String newWard,  String oldProvince,  String oldDistrict,  String oldWard,  String oldWardView,  String type)?  $default,) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.id,_that.newProvince,_that.newWard,_that.oldProvince,_that.oldDistrict,_that.oldWard,_that.oldWardView,_that.type);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _Address extends Address with DiagnosticableTreeMixin {
  const _Address({this.id = '', this.newProvince = '', this.newWard = '', this.oldProvince = '', this.oldDistrict = '', this.oldWard = '', this.oldWardView = '', this.type = ''}): super._();
  factory _Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String newProvince;
@override@JsonKey() final  String newWard;
@override@JsonKey() final  String oldProvince;
@override@JsonKey() final  String oldDistrict;
@override@JsonKey() final  String oldWard;
@override@JsonKey() final  String oldWardView;
@override@JsonKey() final  String type;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressCopyWith<_Address> get copyWith => __$AddressCopyWithImpl<_Address>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Address'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('newProvince', newProvince))..add(DiagnosticsProperty('newWard', newWard))..add(DiagnosticsProperty('oldProvince', oldProvince))..add(DiagnosticsProperty('oldDistrict', oldDistrict))..add(DiagnosticsProperty('oldWard', oldWard))..add(DiagnosticsProperty('oldWardView', oldWardView))..add(DiagnosticsProperty('type', type));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Address&&(identical(other.id, id) || other.id == id)&&(identical(other.newProvince, newProvince) || other.newProvince == newProvince)&&(identical(other.newWard, newWard) || other.newWard == newWard)&&(identical(other.oldProvince, oldProvince) || other.oldProvince == oldProvince)&&(identical(other.oldDistrict, oldDistrict) || other.oldDistrict == oldDistrict)&&(identical(other.oldWard, oldWard) || other.oldWard == oldWard)&&(identical(other.oldWardView, oldWardView) || other.oldWardView == oldWardView)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,newProvince,newWard,oldProvince,oldDistrict,oldWard,oldWardView,type);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Address(id: $id, newProvince: $newProvince, newWard: $newWard, oldProvince: $oldProvince, oldDistrict: $oldDistrict, oldWard: $oldWard, oldWardView: $oldWardView, type: $type)';
}


}

/// @nodoc
abstract mixin class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) _then) = __$AddressCopyWithImpl;
@override @useResult
$Res call({
 String id, String newProvince, String newWard, String oldProvince, String oldDistrict, String oldWard, String oldWardView, String type
});




}
/// @nodoc
class __$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(this._self, this._then);

  final _Address _self;
  final $Res Function(_Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? newProvince = null,Object? newWard = null,Object? oldProvince = null,Object? oldDistrict = null,Object? oldWard = null,Object? oldWardView = null,Object? type = null,}) {
  return _then(_Address(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,newProvince: null == newProvince ? _self.newProvince : newProvince // ignore: cast_nullable_to_non_nullable
as String,newWard: null == newWard ? _self.newWard : newWard // ignore: cast_nullable_to_non_nullable
as String,oldProvince: null == oldProvince ? _self.oldProvince : oldProvince // ignore: cast_nullable_to_non_nullable
as String,oldDistrict: null == oldDistrict ? _self.oldDistrict : oldDistrict // ignore: cast_nullable_to_non_nullable
as String,oldWard: null == oldWard ? _self.oldWard : oldWard // ignore: cast_nullable_to_non_nullable
as String,oldWardView: null == oldWardView ? _self.oldWardView : oldWardView // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
