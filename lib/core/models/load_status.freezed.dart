// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoadStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadStatus()';
}


}

/// @nodoc
class $LoadStatusCopyWith<$Res>  {
$LoadStatusCopyWith(LoadStatus _, $Res Function(LoadStatus) __);
}


/// Adds pattern-matching-related methods to [LoadStatus].
extension LoadStatusPatterns on LoadStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadInitial value)?  initial,TResult Function( LoadLoading value)?  loading,TResult Function( LoadError value)?  error,TResult Function( LoadLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadInitial() when initial != null:
return initial(_that);case LoadLoading() when loading != null:
return loading(_that);case LoadError() when error != null:
return error(_that);case LoadLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadInitial value)  initial,required TResult Function( LoadLoading value)  loading,required TResult Function( LoadError value)  error,required TResult Function( LoadLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case LoadInitial():
return initial(_that);case LoadLoading():
return loading(_that);case LoadError():
return error(_that);case LoadLoaded():
return loaded(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadInitial value)?  initial,TResult? Function( LoadLoading value)?  loading,TResult? Function( LoadError value)?  error,TResult? Function( LoadLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case LoadInitial() when initial != null:
return initial(_that);case LoadLoading() when loading != null:
return loading(_that);case LoadError() when error != null:
return error(_that);case LoadLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AppException exception)?  error,TResult Function()?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadInitial() when initial != null:
return initial();case LoadLoading() when loading != null:
return loading();case LoadError() when error != null:
return error(_that.exception);case LoadLoaded() when loaded != null:
return loaded();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AppException exception)  error,required TResult Function()  loaded,}) {final _that = this;
switch (_that) {
case LoadInitial():
return initial();case LoadLoading():
return loading();case LoadError():
return error(_that.exception);case LoadLoaded():
return loaded();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AppException exception)?  error,TResult? Function()?  loaded,}) {final _that = this;
switch (_that) {
case LoadInitial() when initial != null:
return initial();case LoadLoading() when loading != null:
return loading();case LoadError() when error != null:
return error(_that.exception);case LoadLoaded() when loaded != null:
return loaded();case _:
  return null;

}
}

}

/// @nodoc


class LoadInitial implements LoadStatus {
  const LoadInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadStatus.initial()';
}


}




/// @nodoc


class LoadLoading implements LoadStatus {
  const LoadLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadStatus.loading()';
}


}




/// @nodoc


class LoadError implements LoadStatus {
  const LoadError(this.exception);
  

 final  AppException exception;

/// Create a copy of LoadStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadErrorCopyWith<LoadError> get copyWith => _$LoadErrorCopyWithImpl<LoadError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadError&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'LoadStatus.error(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $LoadErrorCopyWith<$Res> implements $LoadStatusCopyWith<$Res> {
  factory $LoadErrorCopyWith(LoadError value, $Res Function(LoadError) _then) = _$LoadErrorCopyWithImpl;
@useResult
$Res call({
 AppException exception
});




}
/// @nodoc
class _$LoadErrorCopyWithImpl<$Res>
    implements $LoadErrorCopyWith<$Res> {
  _$LoadErrorCopyWithImpl(this._self, this._then);

  final LoadError _self;
  final $Res Function(LoadError) _then;

/// Create a copy of LoadStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(LoadError(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as AppException,
  ));
}


}

/// @nodoc


class LoadLoaded implements LoadStatus {
  const LoadLoaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadLoaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadStatus.loaded()';
}


}




// dart format on
