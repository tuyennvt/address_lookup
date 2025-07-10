// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AsyncValue<T> implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AsyncValue<$T>'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AsyncValue<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AsyncValue<$T>()';
}


}

/// @nodoc
class $AsyncValueCopyWith<T,$Res>  {
$AsyncValueCopyWith(AsyncValue<T> _, $Res Function(AsyncValue<T>) __);
}


/// Adds pattern-matching-related methods to [AsyncValue].
extension AsyncValuePatterns<T> on AsyncValue<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AsyncInitial<T> value)?  initial,TResult Function( AsyncLoading<T> value)?  loading,TResult Function( AsyncError<T> value)?  error,TResult Function( AsyncData<T> value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AsyncInitial() when initial != null:
return initial(_that);case AsyncLoading() when loading != null:
return loading(_that);case AsyncError() when error != null:
return error(_that);case AsyncData() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AsyncInitial<T> value)  initial,required TResult Function( AsyncLoading<T> value)  loading,required TResult Function( AsyncError<T> value)  error,required TResult Function( AsyncData<T> value)  data,}){
final _that = this;
switch (_that) {
case AsyncInitial():
return initial(_that);case AsyncLoading():
return loading(_that);case AsyncError():
return error(_that);case AsyncData():
return data(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AsyncInitial<T> value)?  initial,TResult? Function( AsyncLoading<T> value)?  loading,TResult? Function( AsyncError<T> value)?  error,TResult? Function( AsyncData<T> value)?  data,}){
final _that = this;
switch (_that) {
case AsyncInitial() when initial != null:
return initial(_that);case AsyncLoading() when loading != null:
return loading(_that);case AsyncError() when error != null:
return error(_that);case AsyncData() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AppException exception)?  error,TResult Function( T data)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AsyncInitial() when initial != null:
return initial();case AsyncLoading() when loading != null:
return loading();case AsyncError() when error != null:
return error(_that.exception);case AsyncData() when data != null:
return data(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AppException exception)  error,required TResult Function( T data)  data,}) {final _that = this;
switch (_that) {
case AsyncInitial():
return initial();case AsyncLoading():
return loading();case AsyncError():
return error(_that.exception);case AsyncData():
return data(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AppException exception)?  error,TResult? Function( T data)?  data,}) {final _that = this;
switch (_that) {
case AsyncInitial() when initial != null:
return initial();case AsyncLoading() when loading != null:
return loading();case AsyncError() when error != null:
return error(_that.exception);case AsyncData() when data != null:
return data(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class AsyncInitial<T> with DiagnosticableTreeMixin implements AsyncValue<T> {
  const AsyncInitial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AsyncValue<$T>.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AsyncInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AsyncValue<$T>.initial()';
}


}




/// @nodoc


class AsyncLoading<T> with DiagnosticableTreeMixin implements AsyncValue<T> {
  const AsyncLoading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AsyncValue<$T>.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AsyncLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AsyncValue<$T>.loading()';
}


}




/// @nodoc


class AsyncError<T> with DiagnosticableTreeMixin implements AsyncValue<T> {
  const AsyncError(this.exception);
  

 final  AppException exception;

/// Create a copy of AsyncValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AsyncErrorCopyWith<T, AsyncError<T>> get copyWith => _$AsyncErrorCopyWithImpl<T, AsyncError<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AsyncValue<$T>.error'))
    ..add(DiagnosticsProperty('exception', exception));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AsyncError<T>&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AsyncValue<$T>.error(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $AsyncErrorCopyWith<T,$Res> implements $AsyncValueCopyWith<T, $Res> {
  factory $AsyncErrorCopyWith(AsyncError<T> value, $Res Function(AsyncError<T>) _then) = _$AsyncErrorCopyWithImpl;
@useResult
$Res call({
 AppException exception
});




}
/// @nodoc
class _$AsyncErrorCopyWithImpl<T,$Res>
    implements $AsyncErrorCopyWith<T, $Res> {
  _$AsyncErrorCopyWithImpl(this._self, this._then);

  final AsyncError<T> _self;
  final $Res Function(AsyncError<T>) _then;

/// Create a copy of AsyncValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(AsyncError<T>(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as AppException,
  ));
}


}

/// @nodoc


class AsyncData<T> with DiagnosticableTreeMixin implements AsyncValue<T> {
  const AsyncData(this.data);
  

 final  T data;

/// Create a copy of AsyncValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AsyncDataCopyWith<T, AsyncData<T>> get copyWith => _$AsyncDataCopyWithImpl<T, AsyncData<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AsyncValue<$T>.data'))
    ..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AsyncData<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AsyncValue<$T>.data(data: $data)';
}


}

/// @nodoc
abstract mixin class $AsyncDataCopyWith<T,$Res> implements $AsyncValueCopyWith<T, $Res> {
  factory $AsyncDataCopyWith(AsyncData<T> value, $Res Function(AsyncData<T>) _then) = _$AsyncDataCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$AsyncDataCopyWithImpl<T,$Res>
    implements $AsyncDataCopyWith<T, $Res> {
  _$AsyncDataCopyWithImpl(this._self, this._then);

  final AsyncData<T> _self;
  final $Res Function(AsyncData<T>) _then;

/// Create a copy of AsyncValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(AsyncData<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

// dart format on
