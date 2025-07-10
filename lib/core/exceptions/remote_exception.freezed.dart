// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RemoteException {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoteException()';
}


}

/// @nodoc
class $RemoteExceptionCopyWith<$Res>  {
$RemoteExceptionCopyWith(RemoteException _, $Res Function(RemoteException) __);
}


/// Adds pattern-matching-related methods to [RemoteException].
extension RemoteExceptionPatterns on RemoteException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Cancel value)?  cancel,TResult Function( ConnectionTimeout value)?  connectionTimeout,TResult Function( ReceiveTimeout value)?  receiveTimeout,TResult Function( SendTimeout value)?  sendTimeout,TResult Function( BadResponse value)?  badResponse,TResult Function( Unknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Cancel() when cancel != null:
return cancel(_that);case ConnectionTimeout() when connectionTimeout != null:
return connectionTimeout(_that);case ReceiveTimeout() when receiveTimeout != null:
return receiveTimeout(_that);case SendTimeout() when sendTimeout != null:
return sendTimeout(_that);case BadResponse() when badResponse != null:
return badResponse(_that);case Unknown() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Cancel value)  cancel,required TResult Function( ConnectionTimeout value)  connectionTimeout,required TResult Function( ReceiveTimeout value)  receiveTimeout,required TResult Function( SendTimeout value)  sendTimeout,required TResult Function( BadResponse value)  badResponse,required TResult Function( Unknown value)  unknown,}){
final _that = this;
switch (_that) {
case Cancel():
return cancel(_that);case ConnectionTimeout():
return connectionTimeout(_that);case ReceiveTimeout():
return receiveTimeout(_that);case SendTimeout():
return sendTimeout(_that);case BadResponse():
return badResponse(_that);case Unknown():
return unknown(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Cancel value)?  cancel,TResult? Function( ConnectionTimeout value)?  connectionTimeout,TResult? Function( ReceiveTimeout value)?  receiveTimeout,TResult? Function( SendTimeout value)?  sendTimeout,TResult? Function( BadResponse value)?  badResponse,TResult? Function( Unknown value)?  unknown,}){
final _that = this;
switch (_that) {
case Cancel() when cancel != null:
return cancel(_that);case ConnectionTimeout() when connectionTimeout != null:
return connectionTimeout(_that);case ReceiveTimeout() when receiveTimeout != null:
return receiveTimeout(_that);case SendTimeout() when sendTimeout != null:
return sendTimeout(_that);case BadResponse() when badResponse != null:
return badResponse(_that);case Unknown() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  cancel,TResult Function()?  connectionTimeout,TResult Function()?  receiveTimeout,TResult Function()?  sendTimeout,TResult Function( int statusCode,  String message)?  badResponse,TResult Function()?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Cancel() when cancel != null:
return cancel();case ConnectionTimeout() when connectionTimeout != null:
return connectionTimeout();case ReceiveTimeout() when receiveTimeout != null:
return receiveTimeout();case SendTimeout() when sendTimeout != null:
return sendTimeout();case BadResponse() when badResponse != null:
return badResponse(_that.statusCode,_that.message);case Unknown() when unknown != null:
return unknown();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  cancel,required TResult Function()  connectionTimeout,required TResult Function()  receiveTimeout,required TResult Function()  sendTimeout,required TResult Function( int statusCode,  String message)  badResponse,required TResult Function()  unknown,}) {final _that = this;
switch (_that) {
case Cancel():
return cancel();case ConnectionTimeout():
return connectionTimeout();case ReceiveTimeout():
return receiveTimeout();case SendTimeout():
return sendTimeout();case BadResponse():
return badResponse(_that.statusCode,_that.message);case Unknown():
return unknown();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  cancel,TResult? Function()?  connectionTimeout,TResult? Function()?  receiveTimeout,TResult? Function()?  sendTimeout,TResult? Function( int statusCode,  String message)?  badResponse,TResult? Function()?  unknown,}) {final _that = this;
switch (_that) {
case Cancel() when cancel != null:
return cancel();case ConnectionTimeout() when connectionTimeout != null:
return connectionTimeout();case ReceiveTimeout() when receiveTimeout != null:
return receiveTimeout();case SendTimeout() when sendTimeout != null:
return sendTimeout();case BadResponse() when badResponse != null:
return badResponse(_that.statusCode,_that.message);case Unknown() when unknown != null:
return unknown();case _:
  return null;

}
}

}

/// @nodoc


class Cancel extends RemoteException {
  const Cancel(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cancel);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoteException.cancel()';
}


}




/// @nodoc


class ConnectionTimeout extends RemoteException {
  const ConnectionTimeout(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoteException.connectionTimeout()';
}


}




/// @nodoc


class ReceiveTimeout extends RemoteException {
  const ReceiveTimeout(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReceiveTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoteException.receiveTimeout()';
}


}




/// @nodoc


class SendTimeout extends RemoteException {
  const SendTimeout(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoteException.sendTimeout()';
}


}




/// @nodoc


class BadResponse extends RemoteException {
  const BadResponse({required this.statusCode, required this.message}): super._();
  

 final  int statusCode;
 final  String message;

/// Create a copy of RemoteException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BadResponseCopyWith<BadResponse> get copyWith => _$BadResponseCopyWithImpl<BadResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BadResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,statusCode,message);

@override
String toString() {
  return 'RemoteException.badResponse(statusCode: $statusCode, message: $message)';
}


}

/// @nodoc
abstract mixin class $BadResponseCopyWith<$Res> implements $RemoteExceptionCopyWith<$Res> {
  factory $BadResponseCopyWith(BadResponse value, $Res Function(BadResponse) _then) = _$BadResponseCopyWithImpl;
@useResult
$Res call({
 int statusCode, String message
});




}
/// @nodoc
class _$BadResponseCopyWithImpl<$Res>
    implements $BadResponseCopyWith<$Res> {
  _$BadResponseCopyWithImpl(this._self, this._then);

  final BadResponse _self;
  final $Res Function(BadResponse) _then;

/// Create a copy of RemoteException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? message = null,}) {
  return _then(BadResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Unknown extends RemoteException {
  const Unknown(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unknown);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoteException.unknown()';
}


}




// dart format on
