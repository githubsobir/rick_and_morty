// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Failure {

 String? get message;
/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this as Failure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res>  {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServerFailure value)?  serverError,TResult Function( UnauthorizedFailure value)?  unauthorized,TResult Function( ForbiddenFailure value)?  forbidden,TResult Function( NotFoundFailure value)?  notFound,TResult Function( TimeOutFailure value)?  timeOut,TResult Function( NoConnectionFailure value)?  noConnection,TResult Function( ConnectionTimeoutFailure value)?  connectionTimeout,TResult Function( InvalidDataFailure value)?  invalidData,TResult Function( EmptyResponseFailure value)?  emptyResponse,TResult Function( UnexpectedFailure value)?  unexpected,TResult Function( CacheFailure value)?  cacheFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServerFailure() when serverError != null:
return serverError(_that);case UnauthorizedFailure() when unauthorized != null:
return unauthorized(_that);case ForbiddenFailure() when forbidden != null:
return forbidden(_that);case NotFoundFailure() when notFound != null:
return notFound(_that);case TimeOutFailure() when timeOut != null:
return timeOut(_that);case NoConnectionFailure() when noConnection != null:
return noConnection(_that);case ConnectionTimeoutFailure() when connectionTimeout != null:
return connectionTimeout(_that);case InvalidDataFailure() when invalidData != null:
return invalidData(_that);case EmptyResponseFailure() when emptyResponse != null:
return emptyResponse(_that);case UnexpectedFailure() when unexpected != null:
return unexpected(_that);case CacheFailure() when cacheFailure != null:
return cacheFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServerFailure value)  serverError,required TResult Function( UnauthorizedFailure value)  unauthorized,required TResult Function( ForbiddenFailure value)  forbidden,required TResult Function( NotFoundFailure value)  notFound,required TResult Function( TimeOutFailure value)  timeOut,required TResult Function( NoConnectionFailure value)  noConnection,required TResult Function( ConnectionTimeoutFailure value)  connectionTimeout,required TResult Function( InvalidDataFailure value)  invalidData,required TResult Function( EmptyResponseFailure value)  emptyResponse,required TResult Function( UnexpectedFailure value)  unexpected,required TResult Function( CacheFailure value)  cacheFailure,}){
final _that = this;
switch (_that) {
case ServerFailure():
return serverError(_that);case UnauthorizedFailure():
return unauthorized(_that);case ForbiddenFailure():
return forbidden(_that);case NotFoundFailure():
return notFound(_that);case TimeOutFailure():
return timeOut(_that);case NoConnectionFailure():
return noConnection(_that);case ConnectionTimeoutFailure():
return connectionTimeout(_that);case InvalidDataFailure():
return invalidData(_that);case EmptyResponseFailure():
return emptyResponse(_that);case UnexpectedFailure():
return unexpected(_that);case CacheFailure():
return cacheFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServerFailure value)?  serverError,TResult? Function( UnauthorizedFailure value)?  unauthorized,TResult? Function( ForbiddenFailure value)?  forbidden,TResult? Function( NotFoundFailure value)?  notFound,TResult? Function( TimeOutFailure value)?  timeOut,TResult? Function( NoConnectionFailure value)?  noConnection,TResult? Function( ConnectionTimeoutFailure value)?  connectionTimeout,TResult? Function( InvalidDataFailure value)?  invalidData,TResult? Function( EmptyResponseFailure value)?  emptyResponse,TResult? Function( UnexpectedFailure value)?  unexpected,TResult? Function( CacheFailure value)?  cacheFailure,}){
final _that = this;
switch (_that) {
case ServerFailure() when serverError != null:
return serverError(_that);case UnauthorizedFailure() when unauthorized != null:
return unauthorized(_that);case ForbiddenFailure() when forbidden != null:
return forbidden(_that);case NotFoundFailure() when notFound != null:
return notFound(_that);case TimeOutFailure() when timeOut != null:
return timeOut(_that);case NoConnectionFailure() when noConnection != null:
return noConnection(_that);case ConnectionTimeoutFailure() when connectionTimeout != null:
return connectionTimeout(_that);case InvalidDataFailure() when invalidData != null:
return invalidData(_that);case EmptyResponseFailure() when emptyResponse != null:
return emptyResponse(_that);case UnexpectedFailure() when unexpected != null:
return unexpected(_that);case CacheFailure() when cacheFailure != null:
return cacheFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? message)?  serverError,TResult Function( String? message)?  unauthorized,TResult Function( String? message)?  forbidden,TResult Function( String? message)?  notFound,TResult Function( String? message)?  timeOut,TResult Function( String? message)?  noConnection,TResult Function( String? message)?  connectionTimeout,TResult Function( String? message)?  invalidData,TResult Function( String? message)?  emptyResponse,TResult Function( String? message)?  unexpected,TResult Function( String? message)?  cacheFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServerFailure() when serverError != null:
return serverError(_that.message);case UnauthorizedFailure() when unauthorized != null:
return unauthorized(_that.message);case ForbiddenFailure() when forbidden != null:
return forbidden(_that.message);case NotFoundFailure() when notFound != null:
return notFound(_that.message);case TimeOutFailure() when timeOut != null:
return timeOut(_that.message);case NoConnectionFailure() when noConnection != null:
return noConnection(_that.message);case ConnectionTimeoutFailure() when connectionTimeout != null:
return connectionTimeout(_that.message);case InvalidDataFailure() when invalidData != null:
return invalidData(_that.message);case EmptyResponseFailure() when emptyResponse != null:
return emptyResponse(_that.message);case UnexpectedFailure() when unexpected != null:
return unexpected(_that.message);case CacheFailure() when cacheFailure != null:
return cacheFailure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? message)  serverError,required TResult Function( String? message)  unauthorized,required TResult Function( String? message)  forbidden,required TResult Function( String? message)  notFound,required TResult Function( String? message)  timeOut,required TResult Function( String? message)  noConnection,required TResult Function( String? message)  connectionTimeout,required TResult Function( String? message)  invalidData,required TResult Function( String? message)  emptyResponse,required TResult Function( String? message)  unexpected,required TResult Function( String? message)  cacheFailure,}) {final _that = this;
switch (_that) {
case ServerFailure():
return serverError(_that.message);case UnauthorizedFailure():
return unauthorized(_that.message);case ForbiddenFailure():
return forbidden(_that.message);case NotFoundFailure():
return notFound(_that.message);case TimeOutFailure():
return timeOut(_that.message);case NoConnectionFailure():
return noConnection(_that.message);case ConnectionTimeoutFailure():
return connectionTimeout(_that.message);case InvalidDataFailure():
return invalidData(_that.message);case EmptyResponseFailure():
return emptyResponse(_that.message);case UnexpectedFailure():
return unexpected(_that.message);case CacheFailure():
return cacheFailure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? message)?  serverError,TResult? Function( String? message)?  unauthorized,TResult? Function( String? message)?  forbidden,TResult? Function( String? message)?  notFound,TResult? Function( String? message)?  timeOut,TResult? Function( String? message)?  noConnection,TResult? Function( String? message)?  connectionTimeout,TResult? Function( String? message)?  invalidData,TResult? Function( String? message)?  emptyResponse,TResult? Function( String? message)?  unexpected,TResult? Function( String? message)?  cacheFailure,}) {final _that = this;
switch (_that) {
case ServerFailure() when serverError != null:
return serverError(_that.message);case UnauthorizedFailure() when unauthorized != null:
return unauthorized(_that.message);case ForbiddenFailure() when forbidden != null:
return forbidden(_that.message);case NotFoundFailure() when notFound != null:
return notFound(_that.message);case TimeOutFailure() when timeOut != null:
return timeOut(_that.message);case NoConnectionFailure() when noConnection != null:
return noConnection(_that.message);case ConnectionTimeoutFailure() when connectionTimeout != null:
return connectionTimeout(_that.message);case InvalidDataFailure() when invalidData != null:
return invalidData(_that.message);case EmptyResponseFailure() when emptyResponse != null:
return emptyResponse(_that.message);case UnexpectedFailure() when unexpected != null:
return unexpected(_that.message);case CacheFailure() when cacheFailure != null:
return cacheFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ServerFailure implements Failure {
  const ServerFailure([this.message]);
  

@override final  String? message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerFailureCopyWith<ServerFailure> get copyWith => _$ServerFailureCopyWithImpl<ServerFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.serverError(message: $message)';
}


}

/// @nodoc
abstract mixin class $ServerFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(ServerFailure value, $Res Function(ServerFailure) _then) = _$ServerFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._self, this._then);

  final ServerFailure _self;
  final $Res Function(ServerFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(ServerFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class UnauthorizedFailure implements Failure {
  const UnauthorizedFailure([this.message]);
  

@override final  String? message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnauthorizedFailureCopyWith<UnauthorizedFailure> get copyWith => _$UnauthorizedFailureCopyWithImpl<UnauthorizedFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnauthorizedFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.unauthorized(message: $message)';
}


}

/// @nodoc
abstract mixin class $UnauthorizedFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $UnauthorizedFailureCopyWith(UnauthorizedFailure value, $Res Function(UnauthorizedFailure) _then) = _$UnauthorizedFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$UnauthorizedFailureCopyWithImpl<$Res>
    implements $UnauthorizedFailureCopyWith<$Res> {
  _$UnauthorizedFailureCopyWithImpl(this._self, this._then);

  final UnauthorizedFailure _self;
  final $Res Function(UnauthorizedFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(UnauthorizedFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ForbiddenFailure implements Failure {
  const ForbiddenFailure([this.message]);
  

@override final  String? message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForbiddenFailureCopyWith<ForbiddenFailure> get copyWith => _$ForbiddenFailureCopyWithImpl<ForbiddenFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForbiddenFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.forbidden(message: $message)';
}


}

/// @nodoc
abstract mixin class $ForbiddenFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ForbiddenFailureCopyWith(ForbiddenFailure value, $Res Function(ForbiddenFailure) _then) = _$ForbiddenFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$ForbiddenFailureCopyWithImpl<$Res>
    implements $ForbiddenFailureCopyWith<$Res> {
  _$ForbiddenFailureCopyWithImpl(this._self, this._then);

  final ForbiddenFailure _self;
  final $Res Function(ForbiddenFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(ForbiddenFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class NotFoundFailure implements Failure {
  const NotFoundFailure([this.message]);
  

@override final  String? message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotFoundFailureCopyWith<NotFoundFailure> get copyWith => _$NotFoundFailureCopyWithImpl<NotFoundFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFoundFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.notFound(message: $message)';
}


}

/// @nodoc
abstract mixin class $NotFoundFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $NotFoundFailureCopyWith(NotFoundFailure value, $Res Function(NotFoundFailure) _then) = _$NotFoundFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$NotFoundFailureCopyWithImpl<$Res>
    implements $NotFoundFailureCopyWith<$Res> {
  _$NotFoundFailureCopyWithImpl(this._self, this._then);

  final NotFoundFailure _self;
  final $Res Function(NotFoundFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(NotFoundFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class TimeOutFailure implements Failure {
  const TimeOutFailure([this.message]);
  

@override final  String? message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeOutFailureCopyWith<TimeOutFailure> get copyWith => _$TimeOutFailureCopyWithImpl<TimeOutFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeOutFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.timeOut(message: $message)';
}


}

/// @nodoc
abstract mixin class $TimeOutFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $TimeOutFailureCopyWith(TimeOutFailure value, $Res Function(TimeOutFailure) _then) = _$TimeOutFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$TimeOutFailureCopyWithImpl<$Res>
    implements $TimeOutFailureCopyWith<$Res> {
  _$TimeOutFailureCopyWithImpl(this._self, this._then);

  final TimeOutFailure _self;
  final $Res Function(TimeOutFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(TimeOutFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class NoConnectionFailure implements Failure {
  const NoConnectionFailure([this.message]);
  

@override final  String? message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoConnectionFailureCopyWith<NoConnectionFailure> get copyWith => _$NoConnectionFailureCopyWithImpl<NoConnectionFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoConnectionFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.noConnection(message: $message)';
}


}

/// @nodoc
abstract mixin class $NoConnectionFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $NoConnectionFailureCopyWith(NoConnectionFailure value, $Res Function(NoConnectionFailure) _then) = _$NoConnectionFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$NoConnectionFailureCopyWithImpl<$Res>
    implements $NoConnectionFailureCopyWith<$Res> {
  _$NoConnectionFailureCopyWithImpl(this._self, this._then);

  final NoConnectionFailure _self;
  final $Res Function(NoConnectionFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(NoConnectionFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ConnectionTimeoutFailure implements Failure {
  const ConnectionTimeoutFailure([this.message]);
  

@override final  String? message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectionTimeoutFailureCopyWith<ConnectionTimeoutFailure> get copyWith => _$ConnectionTimeoutFailureCopyWithImpl<ConnectionTimeoutFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionTimeoutFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.connectionTimeout(message: $message)';
}


}

/// @nodoc
abstract mixin class $ConnectionTimeoutFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ConnectionTimeoutFailureCopyWith(ConnectionTimeoutFailure value, $Res Function(ConnectionTimeoutFailure) _then) = _$ConnectionTimeoutFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$ConnectionTimeoutFailureCopyWithImpl<$Res>
    implements $ConnectionTimeoutFailureCopyWith<$Res> {
  _$ConnectionTimeoutFailureCopyWithImpl(this._self, this._then);

  final ConnectionTimeoutFailure _self;
  final $Res Function(ConnectionTimeoutFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(ConnectionTimeoutFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class InvalidDataFailure implements Failure {
  const InvalidDataFailure([this.message]);
  

@override final  String? message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidDataFailureCopyWith<InvalidDataFailure> get copyWith => _$InvalidDataFailureCopyWithImpl<InvalidDataFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidDataFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.invalidData(message: $message)';
}


}

/// @nodoc
abstract mixin class $InvalidDataFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $InvalidDataFailureCopyWith(InvalidDataFailure value, $Res Function(InvalidDataFailure) _then) = _$InvalidDataFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$InvalidDataFailureCopyWithImpl<$Res>
    implements $InvalidDataFailureCopyWith<$Res> {
  _$InvalidDataFailureCopyWithImpl(this._self, this._then);

  final InvalidDataFailure _self;
  final $Res Function(InvalidDataFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(InvalidDataFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class EmptyResponseFailure implements Failure {
  const EmptyResponseFailure([this.message]);
  

@override final  String? message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmptyResponseFailureCopyWith<EmptyResponseFailure> get copyWith => _$EmptyResponseFailureCopyWithImpl<EmptyResponseFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmptyResponseFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.emptyResponse(message: $message)';
}


}

/// @nodoc
abstract mixin class $EmptyResponseFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $EmptyResponseFailureCopyWith(EmptyResponseFailure value, $Res Function(EmptyResponseFailure) _then) = _$EmptyResponseFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$EmptyResponseFailureCopyWithImpl<$Res>
    implements $EmptyResponseFailureCopyWith<$Res> {
  _$EmptyResponseFailureCopyWithImpl(this._self, this._then);

  final EmptyResponseFailure _self;
  final $Res Function(EmptyResponseFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(EmptyResponseFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class UnexpectedFailure implements Failure {
  const UnexpectedFailure([this.message]);
  

@override final  String? message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnexpectedFailureCopyWith<UnexpectedFailure> get copyWith => _$UnexpectedFailureCopyWithImpl<UnexpectedFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnexpectedFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.unexpected(message: $message)';
}


}

/// @nodoc
abstract mixin class $UnexpectedFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $UnexpectedFailureCopyWith(UnexpectedFailure value, $Res Function(UnexpectedFailure) _then) = _$UnexpectedFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$UnexpectedFailureCopyWithImpl<$Res>
    implements $UnexpectedFailureCopyWith<$Res> {
  _$UnexpectedFailureCopyWithImpl(this._self, this._then);

  final UnexpectedFailure _self;
  final $Res Function(UnexpectedFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(UnexpectedFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class CacheFailure implements Failure {
  const CacheFailure([this.message]);
  

@override final  String? message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CacheFailureCopyWith<CacheFailure> get copyWith => _$CacheFailureCopyWithImpl<CacheFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CacheFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.cacheFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $CacheFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $CacheFailureCopyWith(CacheFailure value, $Res Function(CacheFailure) _then) = _$CacheFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$CacheFailureCopyWithImpl<$Res>
    implements $CacheFailureCopyWith<$Res> {
  _$CacheFailureCopyWithImpl(this._self, this._then);

  final CacheFailure _self;
  final $Res Function(CacheFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(CacheFailure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
