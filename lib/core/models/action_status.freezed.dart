// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ActionStatus<T> implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ActionStatus<$T>'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActionStatus<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ActionStatus<$T>()';
}


}

/// @nodoc
class $ActionStatusCopyWith<T,$Res>  {
$ActionStatusCopyWith(ActionStatus<T> _, $Res Function(ActionStatus<T>) __);
}


/// Adds pattern-matching-related methods to [ActionStatus].
extension ActionStatusPatterns<T> on ActionStatus<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ActionProcessing<T> value)?  processing,TResult Function( ActionError<T> value)?  error,TResult Function( ActionSuccess<T> value)?  success,TResult Function( ActionNone<T> value)?  none,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ActionProcessing() when processing != null:
return processing(_that);case ActionError() when error != null:
return error(_that);case ActionSuccess() when success != null:
return success(_that);case ActionNone() when none != null:
return none(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ActionProcessing<T> value)  processing,required TResult Function( ActionError<T> value)  error,required TResult Function( ActionSuccess<T> value)  success,required TResult Function( ActionNone<T> value)  none,}){
final _that = this;
switch (_that) {
case ActionProcessing():
return processing(_that);case ActionError():
return error(_that);case ActionSuccess():
return success(_that);case ActionNone():
return none(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ActionProcessing<T> value)?  processing,TResult? Function( ActionError<T> value)?  error,TResult? Function( ActionSuccess<T> value)?  success,TResult? Function( ActionNone<T> value)?  none,}){
final _that = this;
switch (_that) {
case ActionProcessing() when processing != null:
return processing(_that);case ActionError() when error != null:
return error(_that);case ActionSuccess() when success != null:
return success(_that);case ActionNone() when none != null:
return none(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  processing,TResult Function( AppException exception)?  error,TResult Function( T? data)?  success,TResult Function()?  none,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ActionProcessing() when processing != null:
return processing();case ActionError() when error != null:
return error(_that.exception);case ActionSuccess() when success != null:
return success(_that.data);case ActionNone() when none != null:
return none();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  processing,required TResult Function( AppException exception)  error,required TResult Function( T? data)  success,required TResult Function()  none,}) {final _that = this;
switch (_that) {
case ActionProcessing():
return processing();case ActionError():
return error(_that.exception);case ActionSuccess():
return success(_that.data);case ActionNone():
return none();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  processing,TResult? Function( AppException exception)?  error,TResult? Function( T? data)?  success,TResult? Function()?  none,}) {final _that = this;
switch (_that) {
case ActionProcessing() when processing != null:
return processing();case ActionError() when error != null:
return error(_that.exception);case ActionSuccess() when success != null:
return success(_that.data);case ActionNone() when none != null:
return none();case _:
  return null;

}
}

}

/// @nodoc


class ActionProcessing<T> with DiagnosticableTreeMixin implements ActionStatus<T> {
  const ActionProcessing();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ActionStatus<$T>.processing'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActionProcessing<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ActionStatus<$T>.processing()';
}


}




/// @nodoc


class ActionError<T> with DiagnosticableTreeMixin implements ActionStatus<T> {
  const ActionError(this.exception);
  

 final  AppException exception;

/// Create a copy of ActionStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActionErrorCopyWith<T, ActionError<T>> get copyWith => _$ActionErrorCopyWithImpl<T, ActionError<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ActionStatus<$T>.error'))
    ..add(DiagnosticsProperty('exception', exception));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActionError<T>&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ActionStatus<$T>.error(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $ActionErrorCopyWith<T,$Res> implements $ActionStatusCopyWith<T, $Res> {
  factory $ActionErrorCopyWith(ActionError<T> value, $Res Function(ActionError<T>) _then) = _$ActionErrorCopyWithImpl;
@useResult
$Res call({
 AppException exception
});




}
/// @nodoc
class _$ActionErrorCopyWithImpl<T,$Res>
    implements $ActionErrorCopyWith<T, $Res> {
  _$ActionErrorCopyWithImpl(this._self, this._then);

  final ActionError<T> _self;
  final $Res Function(ActionError<T>) _then;

/// Create a copy of ActionStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(ActionError<T>(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as AppException,
  ));
}


}

/// @nodoc


class ActionSuccess<T> with DiagnosticableTreeMixin implements ActionStatus<T> {
  const ActionSuccess([this.data]);
  

 final  T? data;

/// Create a copy of ActionStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActionSuccessCopyWith<T, ActionSuccess<T>> get copyWith => _$ActionSuccessCopyWithImpl<T, ActionSuccess<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ActionStatus<$T>.success'))
    ..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActionSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ActionStatus<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $ActionSuccessCopyWith<T,$Res> implements $ActionStatusCopyWith<T, $Res> {
  factory $ActionSuccessCopyWith(ActionSuccess<T> value, $Res Function(ActionSuccess<T>) _then) = _$ActionSuccessCopyWithImpl;
@useResult
$Res call({
 T? data
});




}
/// @nodoc
class _$ActionSuccessCopyWithImpl<T,$Res>
    implements $ActionSuccessCopyWith<T, $Res> {
  _$ActionSuccessCopyWithImpl(this._self, this._then);

  final ActionSuccess<T> _self;
  final $Res Function(ActionSuccess<T>) _then;

/// Create a copy of ActionStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ActionSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class ActionNone<T> with DiagnosticableTreeMixin implements ActionStatus<T> {
  const ActionNone();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ActionStatus<$T>.none'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActionNone<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ActionStatus<$T>.none()';
}


}




// dart format on
