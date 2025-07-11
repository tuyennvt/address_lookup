// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainState {

 List<String> get oldProvinces; String get selectedOldProvince; List<String> get oldDistricts; String get selectedOldDistrict; List<String> get oldWards; String get selectedOldWard; List<Address> get newAddresses;
/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainStateCopyWith<MainState> get copyWith => _$MainStateCopyWithImpl<MainState>(this as MainState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainState&&const DeepCollectionEquality().equals(other.oldProvinces, oldProvinces)&&(identical(other.selectedOldProvince, selectedOldProvince) || other.selectedOldProvince == selectedOldProvince)&&const DeepCollectionEquality().equals(other.oldDistricts, oldDistricts)&&(identical(other.selectedOldDistrict, selectedOldDistrict) || other.selectedOldDistrict == selectedOldDistrict)&&const DeepCollectionEquality().equals(other.oldWards, oldWards)&&(identical(other.selectedOldWard, selectedOldWard) || other.selectedOldWard == selectedOldWard)&&const DeepCollectionEquality().equals(other.newAddresses, newAddresses));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(oldProvinces),selectedOldProvince,const DeepCollectionEquality().hash(oldDistricts),selectedOldDistrict,const DeepCollectionEquality().hash(oldWards),selectedOldWard,const DeepCollectionEquality().hash(newAddresses));

@override
String toString() {
  return 'MainState(oldProvinces: $oldProvinces, selectedOldProvince: $selectedOldProvince, oldDistricts: $oldDistricts, selectedOldDistrict: $selectedOldDistrict, oldWards: $oldWards, selectedOldWard: $selectedOldWard, newAddresses: $newAddresses)';
}


}

/// @nodoc
abstract mixin class $MainStateCopyWith<$Res>  {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) _then) = _$MainStateCopyWithImpl;
@useResult
$Res call({
 List<String> oldProvinces, String selectedOldProvince, List<String> oldDistricts, String selectedOldDistrict, List<String> oldWards, String selectedOldWard, List<Address> newAddresses
});




}
/// @nodoc
class _$MainStateCopyWithImpl<$Res>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._self, this._then);

  final MainState _self;
  final $Res Function(MainState) _then;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? oldProvinces = null,Object? selectedOldProvince = null,Object? oldDistricts = null,Object? selectedOldDistrict = null,Object? oldWards = null,Object? selectedOldWard = null,Object? newAddresses = null,}) {
  return _then(_self.copyWith(
oldProvinces: null == oldProvinces ? _self.oldProvinces : oldProvinces // ignore: cast_nullable_to_non_nullable
as List<String>,selectedOldProvince: null == selectedOldProvince ? _self.selectedOldProvince : selectedOldProvince // ignore: cast_nullable_to_non_nullable
as String,oldDistricts: null == oldDistricts ? _self.oldDistricts : oldDistricts // ignore: cast_nullable_to_non_nullable
as List<String>,selectedOldDistrict: null == selectedOldDistrict ? _self.selectedOldDistrict : selectedOldDistrict // ignore: cast_nullable_to_non_nullable
as String,oldWards: null == oldWards ? _self.oldWards : oldWards // ignore: cast_nullable_to_non_nullable
as List<String>,selectedOldWard: null == selectedOldWard ? _self.selectedOldWard : selectedOldWard // ignore: cast_nullable_to_non_nullable
as String,newAddresses: null == newAddresses ? _self.newAddresses : newAddresses // ignore: cast_nullable_to_non_nullable
as List<Address>,
  ));
}

}


/// Adds pattern-matching-related methods to [MainState].
extension MainStatePatterns on MainState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainState value)  $default,){
final _that = this;
switch (_that) {
case _MainState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainState value)?  $default,){
final _that = this;
switch (_that) {
case _MainState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> oldProvinces,  String selectedOldProvince,  List<String> oldDistricts,  String selectedOldDistrict,  List<String> oldWards,  String selectedOldWard,  List<Address> newAddresses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainState() when $default != null:
return $default(_that.oldProvinces,_that.selectedOldProvince,_that.oldDistricts,_that.selectedOldDistrict,_that.oldWards,_that.selectedOldWard,_that.newAddresses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> oldProvinces,  String selectedOldProvince,  List<String> oldDistricts,  String selectedOldDistrict,  List<String> oldWards,  String selectedOldWard,  List<Address> newAddresses)  $default,) {final _that = this;
switch (_that) {
case _MainState():
return $default(_that.oldProvinces,_that.selectedOldProvince,_that.oldDistricts,_that.selectedOldDistrict,_that.oldWards,_that.selectedOldWard,_that.newAddresses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> oldProvinces,  String selectedOldProvince,  List<String> oldDistricts,  String selectedOldDistrict,  List<String> oldWards,  String selectedOldWard,  List<Address> newAddresses)?  $default,) {final _that = this;
switch (_that) {
case _MainState() when $default != null:
return $default(_that.oldProvinces,_that.selectedOldProvince,_that.oldDistricts,_that.selectedOldDistrict,_that.oldWards,_that.selectedOldWard,_that.newAddresses);case _:
  return null;

}
}

}

/// @nodoc


class _MainState implements MainState {
  const _MainState({final  List<String> oldProvinces = const [], this.selectedOldProvince = '', final  List<String> oldDistricts = const [], this.selectedOldDistrict = '', final  List<String> oldWards = const [], this.selectedOldWard = '', final  List<Address> newAddresses = const []}): _oldProvinces = oldProvinces,_oldDistricts = oldDistricts,_oldWards = oldWards,_newAddresses = newAddresses;
  

 final  List<String> _oldProvinces;
@override@JsonKey() List<String> get oldProvinces {
  if (_oldProvinces is EqualUnmodifiableListView) return _oldProvinces;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_oldProvinces);
}

@override@JsonKey() final  String selectedOldProvince;
 final  List<String> _oldDistricts;
@override@JsonKey() List<String> get oldDistricts {
  if (_oldDistricts is EqualUnmodifiableListView) return _oldDistricts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_oldDistricts);
}

@override@JsonKey() final  String selectedOldDistrict;
 final  List<String> _oldWards;
@override@JsonKey() List<String> get oldWards {
  if (_oldWards is EqualUnmodifiableListView) return _oldWards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_oldWards);
}

@override@JsonKey() final  String selectedOldWard;
 final  List<Address> _newAddresses;
@override@JsonKey() List<Address> get newAddresses {
  if (_newAddresses is EqualUnmodifiableListView) return _newAddresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_newAddresses);
}


/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainStateCopyWith<_MainState> get copyWith => __$MainStateCopyWithImpl<_MainState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainState&&const DeepCollectionEquality().equals(other._oldProvinces, _oldProvinces)&&(identical(other.selectedOldProvince, selectedOldProvince) || other.selectedOldProvince == selectedOldProvince)&&const DeepCollectionEquality().equals(other._oldDistricts, _oldDistricts)&&(identical(other.selectedOldDistrict, selectedOldDistrict) || other.selectedOldDistrict == selectedOldDistrict)&&const DeepCollectionEquality().equals(other._oldWards, _oldWards)&&(identical(other.selectedOldWard, selectedOldWard) || other.selectedOldWard == selectedOldWard)&&const DeepCollectionEquality().equals(other._newAddresses, _newAddresses));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_oldProvinces),selectedOldProvince,const DeepCollectionEquality().hash(_oldDistricts),selectedOldDistrict,const DeepCollectionEquality().hash(_oldWards),selectedOldWard,const DeepCollectionEquality().hash(_newAddresses));

@override
String toString() {
  return 'MainState(oldProvinces: $oldProvinces, selectedOldProvince: $selectedOldProvince, oldDistricts: $oldDistricts, selectedOldDistrict: $selectedOldDistrict, oldWards: $oldWards, selectedOldWard: $selectedOldWard, newAddresses: $newAddresses)';
}


}

/// @nodoc
abstract mixin class _$MainStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$MainStateCopyWith(_MainState value, $Res Function(_MainState) _then) = __$MainStateCopyWithImpl;
@override @useResult
$Res call({
 List<String> oldProvinces, String selectedOldProvince, List<String> oldDistricts, String selectedOldDistrict, List<String> oldWards, String selectedOldWard, List<Address> newAddresses
});




}
/// @nodoc
class __$MainStateCopyWithImpl<$Res>
    implements _$MainStateCopyWith<$Res> {
  __$MainStateCopyWithImpl(this._self, this._then);

  final _MainState _self;
  final $Res Function(_MainState) _then;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? oldProvinces = null,Object? selectedOldProvince = null,Object? oldDistricts = null,Object? selectedOldDistrict = null,Object? oldWards = null,Object? selectedOldWard = null,Object? newAddresses = null,}) {
  return _then(_MainState(
oldProvinces: null == oldProvinces ? _self._oldProvinces : oldProvinces // ignore: cast_nullable_to_non_nullable
as List<String>,selectedOldProvince: null == selectedOldProvince ? _self.selectedOldProvince : selectedOldProvince // ignore: cast_nullable_to_non_nullable
as String,oldDistricts: null == oldDistricts ? _self._oldDistricts : oldDistricts // ignore: cast_nullable_to_non_nullable
as List<String>,selectedOldDistrict: null == selectedOldDistrict ? _self.selectedOldDistrict : selectedOldDistrict // ignore: cast_nullable_to_non_nullable
as String,oldWards: null == oldWards ? _self._oldWards : oldWards // ignore: cast_nullable_to_non_nullable
as List<String>,selectedOldWard: null == selectedOldWard ? _self.selectedOldWard : selectedOldWard // ignore: cast_nullable_to_non_nullable
as String,newAddresses: null == newAddresses ? _self._newAddresses : newAddresses // ignore: cast_nullable_to_non_nullable
as List<Address>,
  ));
}


}

// dart format on
