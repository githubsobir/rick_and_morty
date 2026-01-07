// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavouriteState {

 Set<int> get favouriteIds; bool get isLoading;
/// Create a copy of FavouriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavouriteStateCopyWith<FavouriteState> get copyWith => _$FavouriteStateCopyWithImpl<FavouriteState>(this as FavouriteState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavouriteState&&const DeepCollectionEquality().equals(other.favouriteIds, favouriteIds)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(favouriteIds),isLoading);

@override
String toString() {
  return 'FavouriteState(favouriteIds: $favouriteIds, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $FavouriteStateCopyWith<$Res>  {
  factory $FavouriteStateCopyWith(FavouriteState value, $Res Function(FavouriteState) _then) = _$FavouriteStateCopyWithImpl;
@useResult
$Res call({
 Set<int> favouriteIds, bool isLoading
});




}
/// @nodoc
class _$FavouriteStateCopyWithImpl<$Res>
    implements $FavouriteStateCopyWith<$Res> {
  _$FavouriteStateCopyWithImpl(this._self, this._then);

  final FavouriteState _self;
  final $Res Function(FavouriteState) _then;

/// Create a copy of FavouriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? favouriteIds = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
favouriteIds: null == favouriteIds ? _self.favouriteIds : favouriteIds // ignore: cast_nullable_to_non_nullable
as Set<int>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FavouriteState].
extension FavouriteStatePatterns on FavouriteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavouriteState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavouriteState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavouriteState value)  $default,){
final _that = this;
switch (_that) {
case _FavouriteState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavouriteState value)?  $default,){
final _that = this;
switch (_that) {
case _FavouriteState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Set<int> favouriteIds,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavouriteState() when $default != null:
return $default(_that.favouriteIds,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Set<int> favouriteIds,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case _FavouriteState():
return $default(_that.favouriteIds,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Set<int> favouriteIds,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case _FavouriteState() when $default != null:
return $default(_that.favouriteIds,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _FavouriteState implements FavouriteState {
  const _FavouriteState({final  Set<int> favouriteIds = const {}, this.isLoading = false}): _favouriteIds = favouriteIds;
  

 final  Set<int> _favouriteIds;
@override@JsonKey() Set<int> get favouriteIds {
  if (_favouriteIds is EqualUnmodifiableSetView) return _favouriteIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_favouriteIds);
}

@override@JsonKey() final  bool isLoading;

/// Create a copy of FavouriteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavouriteStateCopyWith<_FavouriteState> get copyWith => __$FavouriteStateCopyWithImpl<_FavouriteState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavouriteState&&const DeepCollectionEquality().equals(other._favouriteIds, _favouriteIds)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_favouriteIds),isLoading);

@override
String toString() {
  return 'FavouriteState(favouriteIds: $favouriteIds, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$FavouriteStateCopyWith<$Res> implements $FavouriteStateCopyWith<$Res> {
  factory _$FavouriteStateCopyWith(_FavouriteState value, $Res Function(_FavouriteState) _then) = __$FavouriteStateCopyWithImpl;
@override @useResult
$Res call({
 Set<int> favouriteIds, bool isLoading
});




}
/// @nodoc
class __$FavouriteStateCopyWithImpl<$Res>
    implements _$FavouriteStateCopyWith<$Res> {
  __$FavouriteStateCopyWithImpl(this._self, this._then);

  final _FavouriteState _self;
  final $Res Function(_FavouriteState) _then;

/// Create a copy of FavouriteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? favouriteIds = null,Object? isLoading = null,}) {
  return _then(_FavouriteState(
favouriteIds: null == favouriteIds ? _self._favouriteIds : favouriteIds // ignore: cast_nullable_to_non_nullable
as Set<int>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
