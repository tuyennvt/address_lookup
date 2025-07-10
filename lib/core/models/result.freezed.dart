// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Result<E,D> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Result<E, D>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Result<$E, $D>()';
}


}

/// @nodoc
class $ResultCopyWith<E,D,$Res>  {
$ResultCopyWith(Result<E, D> _, $Res Function(Result<E, D>) __);
}


/// Adds pattern-matching-related methods to [Result].
extension ResultPatterns<E,D> on Result<E, D> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ResultError<E, D> value)?  error,TResult Function( ResultSuccess<E, D> value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ResultError() when error != null:
return error(_that);case ResultSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ResultError<E, D> value)  error,required TResult Function( ResultSuccess<E, D> value)  success,}){
final _that = this;
switch (_that) {
case ResultError():
return error(_that);case ResultSuccess():
return success(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ResultError<E, D> value)?  error,TResult? Function( ResultSuccess<E, D> value)?  success,}){
final _that = this;
switch (_that) {
case ResultError() when error != null:
return error(_that);case ResultSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( E exception)?  error,TResult Function( D data)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ResultError() when error != null:
return error(_that.exception);case ResultSuccess() when success != null:
return success(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( E exception)  error,required TResult Function( D data)  success,}) {final _that = this;
switch (_that) {
case ResultError():
return error(_that.exception);case ResultSuccess():
return success(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( E exception)?  error,TResult? Function( D data)?  success,}) {final _that = this;
switch (_that) {
case ResultError() when error != null:
return error(_that.exception);case ResultSuccess() when success != null:
return success(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class ResultError<E,D> implements Result<E, D> {
  const ResultError(this.exception);
  

 final  E exception;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultErrorCopyWith<E, D, ResultError<E, D>> get copyWith => _$ResultErrorCopyWithImpl<E, D, ResultError<E, D>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultError<E, D>&&const DeepCollectionEquality().equals(other.exception, exception));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(exception));

@override
String toString() {
  return 'Result<$E, $D>.error(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $ResultErrorCopyWith<E,D,$Res> implements $ResultCopyWith<E, D, $Res> {
  factory $ResultErrorCopyWith(ResultError<E, D> value, $Res Function(ResultError<E, D>) _then) = _$ResultErrorCopyWithImpl;
@useResult
$Res call({
 E exception
});




}
/// @nodoc
class _$ResultErrorCopyWithImpl<E,D,$Res>
    implements $ResultErrorCopyWith<E, D, $Res> {
  _$ResultErrorCopyWithImpl(this._self, this._then);

  final ResultError<E, D> _self;
  final $Res Function(ResultError<E, D>) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(ResultError<E, D>(
freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as E,
  ));
}


}

/// @nodoc


class ResultSuccess<E,D> implements Result<E, D> {
  const ResultSuccess(this.data);
  

 final  D data;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultSuccessCopyWith<E, D, ResultSuccess<E, D>> get copyWith => _$ResultSuccessCopyWithImpl<E, D, ResultSuccess<E, D>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultSuccess<E, D>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'Result<$E, $D>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $ResultSuccessCopyWith<E,D,$Res> implements $ResultCopyWith<E, D, $Res> {
  factory $ResultSuccessCopyWith(ResultSuccess<E, D> value, $Res Function(ResultSuccess<E, D>) _then) = _$ResultSuccessCopyWithImpl;
@useResult
$Res call({
 D data
});




}
/// @nodoc
class _$ResultSuccessCopyWithImpl<E,D,$Res>
    implements $ResultSuccessCopyWith<E, D, $Res> {
  _$ResultSuccessCopyWithImpl(this._self, this._then);

  final ResultSuccess<E, D> _self;
  final $Res Function(ResultSuccess<E, D>) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ResultSuccess<E, D>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as D,
  ));
}


}

// dart format on
