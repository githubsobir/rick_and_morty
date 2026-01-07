// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_character_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharacterListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharacterListState()';
}


}

/// @nodoc
class $CharacterListStateCopyWith<$Res>  {
$CharacterListStateCopyWith(CharacterListState _, $Res Function(CharacterListState) __);
}


/// Adds pattern-matching-related methods to [CharacterListState].
extension CharacterListStatePatterns on CharacterListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CharacterListInitial value)?  initial,TResult Function( CharacterListLoading value)?  loading,TResult Function( CharacterListLoaded value)?  loaded,TResult Function( CharacterListError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CharacterListInitial() when initial != null:
return initial(_that);case CharacterListLoading() when loading != null:
return loading(_that);case CharacterListLoaded() when loaded != null:
return loaded(_that);case CharacterListError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CharacterListInitial value)  initial,required TResult Function( CharacterListLoading value)  loading,required TResult Function( CharacterListLoaded value)  loaded,required TResult Function( CharacterListError value)  error,}){
final _that = this;
switch (_that) {
case CharacterListInitial():
return initial(_that);case CharacterListLoading():
return loading(_that);case CharacterListLoaded():
return loaded(_that);case CharacterListError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CharacterListInitial value)?  initial,TResult? Function( CharacterListLoading value)?  loading,TResult? Function( CharacterListLoaded value)?  loaded,TResult? Function( CharacterListError value)?  error,}){
final _that = this;
switch (_that) {
case CharacterListInitial() when initial != null:
return initial(_that);case CharacterListLoading() when loading != null:
return loading(_that);case CharacterListLoaded() when loaded != null:
return loaded(_that);case CharacterListError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<CharacterEntities> listCharacters,  bool hasMore,  bool isLoadingMore)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CharacterListInitial() when initial != null:
return initial();case CharacterListLoading() when loading != null:
return loading();case CharacterListLoaded() when loaded != null:
return loaded(_that.listCharacters,_that.hasMore,_that.isLoadingMore);case CharacterListError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<CharacterEntities> listCharacters,  bool hasMore,  bool isLoadingMore)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case CharacterListInitial():
return initial();case CharacterListLoading():
return loading();case CharacterListLoaded():
return loaded(_that.listCharacters,_that.hasMore,_that.isLoadingMore);case CharacterListError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<CharacterEntities> listCharacters,  bool hasMore,  bool isLoadingMore)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case CharacterListInitial() when initial != null:
return initial();case CharacterListLoading() when loading != null:
return loading();case CharacterListLoaded() when loaded != null:
return loaded(_that.listCharacters,_that.hasMore,_that.isLoadingMore);case CharacterListError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class CharacterListInitial implements CharacterListState {
  const CharacterListInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterListInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharacterListState.initial()';
}


}




/// @nodoc


class CharacterListLoading implements CharacterListState {
  const CharacterListLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterListLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharacterListState.loading()';
}


}




/// @nodoc


class CharacterListLoaded implements CharacterListState {
  const CharacterListLoaded({required final  List<CharacterEntities> listCharacters, this.hasMore = true, this.isLoadingMore = false}): _listCharacters = listCharacters;
  

 final  List<CharacterEntities> _listCharacters;
 List<CharacterEntities> get listCharacters {
  if (_listCharacters is EqualUnmodifiableListView) return _listCharacters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listCharacters);
}

@JsonKey() final  bool hasMore;
@JsonKey() final  bool isLoadingMore;

/// Create a copy of CharacterListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterListLoadedCopyWith<CharacterListLoaded> get copyWith => _$CharacterListLoadedCopyWithImpl<CharacterListLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterListLoaded&&const DeepCollectionEquality().equals(other._listCharacters, _listCharacters)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listCharacters),hasMore,isLoadingMore);

@override
String toString() {
  return 'CharacterListState.loaded(listCharacters: $listCharacters, hasMore: $hasMore, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $CharacterListLoadedCopyWith<$Res> implements $CharacterListStateCopyWith<$Res> {
  factory $CharacterListLoadedCopyWith(CharacterListLoaded value, $Res Function(CharacterListLoaded) _then) = _$CharacterListLoadedCopyWithImpl;
@useResult
$Res call({
 List<CharacterEntities> listCharacters, bool hasMore, bool isLoadingMore
});




}
/// @nodoc
class _$CharacterListLoadedCopyWithImpl<$Res>
    implements $CharacterListLoadedCopyWith<$Res> {
  _$CharacterListLoadedCopyWithImpl(this._self, this._then);

  final CharacterListLoaded _self;
  final $Res Function(CharacterListLoaded) _then;

/// Create a copy of CharacterListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listCharacters = null,Object? hasMore = null,Object? isLoadingMore = null,}) {
  return _then(CharacterListLoaded(
listCharacters: null == listCharacters ? _self._listCharacters : listCharacters // ignore: cast_nullable_to_non_nullable
as List<CharacterEntities>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class CharacterListError implements CharacterListState {
  const CharacterListError(this.message);
  

 final  String message;

/// Create a copy of CharacterListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterListErrorCopyWith<CharacterListError> get copyWith => _$CharacterListErrorCopyWithImpl<CharacterListError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterListError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CharacterListState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $CharacterListErrorCopyWith<$Res> implements $CharacterListStateCopyWith<$Res> {
  factory $CharacterListErrorCopyWith(CharacterListError value, $Res Function(CharacterListError) _then) = _$CharacterListErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CharacterListErrorCopyWithImpl<$Res>
    implements $CharacterListErrorCopyWith<$Res> {
  _$CharacterListErrorCopyWithImpl(this._self, this._then);

  final CharacterListError _self;
  final $Res Function(CharacterListError) _then;

/// Create a copy of CharacterListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CharacterListError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
