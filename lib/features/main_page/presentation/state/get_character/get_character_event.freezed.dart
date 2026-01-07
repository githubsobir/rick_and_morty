// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_character_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharacterListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharacterListEvent()';
}


}

/// @nodoc
class $CharacterListEventCopyWith<$Res>  {
$CharacterListEventCopyWith(CharacterListEvent _, $Res Function(CharacterListEvent) __);
}


/// Adds pattern-matching-related methods to [CharacterListEvent].
extension CharacterListEventPatterns on CharacterListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadCharacters value)?  loadCharacters,TResult Function( LoadMoreCharacters value)?  loadMoreCharacters,TResult Function( RefreshCharacters value)?  refreshCharacters,TResult Function( UpdateCharacters value)?  updateCharacter,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadCharacters() when loadCharacters != null:
return loadCharacters(_that);case LoadMoreCharacters() when loadMoreCharacters != null:
return loadMoreCharacters(_that);case RefreshCharacters() when refreshCharacters != null:
return refreshCharacters(_that);case UpdateCharacters() when updateCharacter != null:
return updateCharacter(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadCharacters value)  loadCharacters,required TResult Function( LoadMoreCharacters value)  loadMoreCharacters,required TResult Function( RefreshCharacters value)  refreshCharacters,required TResult Function( UpdateCharacters value)  updateCharacter,}){
final _that = this;
switch (_that) {
case LoadCharacters():
return loadCharacters(_that);case LoadMoreCharacters():
return loadMoreCharacters(_that);case RefreshCharacters():
return refreshCharacters(_that);case UpdateCharacters():
return updateCharacter(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadCharacters value)?  loadCharacters,TResult? Function( LoadMoreCharacters value)?  loadMoreCharacters,TResult? Function( RefreshCharacters value)?  refreshCharacters,TResult? Function( UpdateCharacters value)?  updateCharacter,}){
final _that = this;
switch (_that) {
case LoadCharacters() when loadCharacters != null:
return loadCharacters(_that);case LoadMoreCharacters() when loadMoreCharacters != null:
return loadMoreCharacters(_that);case RefreshCharacters() when refreshCharacters != null:
return refreshCharacters(_that);case UpdateCharacters() when updateCharacter != null:
return updateCharacter(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadCharacters,TResult Function()?  loadMoreCharacters,TResult Function()?  refreshCharacters,TResult Function( int characterId,  bool isFavourite)?  updateCharacter,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadCharacters() when loadCharacters != null:
return loadCharacters();case LoadMoreCharacters() when loadMoreCharacters != null:
return loadMoreCharacters();case RefreshCharacters() when refreshCharacters != null:
return refreshCharacters();case UpdateCharacters() when updateCharacter != null:
return updateCharacter(_that.characterId,_that.isFavourite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadCharacters,required TResult Function()  loadMoreCharacters,required TResult Function()  refreshCharacters,required TResult Function( int characterId,  bool isFavourite)  updateCharacter,}) {final _that = this;
switch (_that) {
case LoadCharacters():
return loadCharacters();case LoadMoreCharacters():
return loadMoreCharacters();case RefreshCharacters():
return refreshCharacters();case UpdateCharacters():
return updateCharacter(_that.characterId,_that.isFavourite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadCharacters,TResult? Function()?  loadMoreCharacters,TResult? Function()?  refreshCharacters,TResult? Function( int characterId,  bool isFavourite)?  updateCharacter,}) {final _that = this;
switch (_that) {
case LoadCharacters() when loadCharacters != null:
return loadCharacters();case LoadMoreCharacters() when loadMoreCharacters != null:
return loadMoreCharacters();case RefreshCharacters() when refreshCharacters != null:
return refreshCharacters();case UpdateCharacters() when updateCharacter != null:
return updateCharacter(_that.characterId,_that.isFavourite);case _:
  return null;

}
}

}

/// @nodoc


class LoadCharacters implements CharacterListEvent {
  const LoadCharacters();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCharacters);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharacterListEvent.loadCharacters()';
}


}




/// @nodoc


class LoadMoreCharacters implements CharacterListEvent {
  const LoadMoreCharacters();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreCharacters);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharacterListEvent.loadMoreCharacters()';
}


}




/// @nodoc


class RefreshCharacters implements CharacterListEvent {
  const RefreshCharacters();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshCharacters);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharacterListEvent.refreshCharacters()';
}


}




/// @nodoc


class UpdateCharacters implements CharacterListEvent {
  const UpdateCharacters({required this.characterId, required this.isFavourite});
  

 final  int characterId;
 final  bool isFavourite;

/// Create a copy of CharacterListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCharactersCopyWith<UpdateCharacters> get copyWith => _$UpdateCharactersCopyWithImpl<UpdateCharacters>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCharacters&&(identical(other.characterId, characterId) || other.characterId == characterId)&&(identical(other.isFavourite, isFavourite) || other.isFavourite == isFavourite));
}


@override
int get hashCode => Object.hash(runtimeType,characterId,isFavourite);

@override
String toString() {
  return 'CharacterListEvent.updateCharacter(characterId: $characterId, isFavourite: $isFavourite)';
}


}

/// @nodoc
abstract mixin class $UpdateCharactersCopyWith<$Res> implements $CharacterListEventCopyWith<$Res> {
  factory $UpdateCharactersCopyWith(UpdateCharacters value, $Res Function(UpdateCharacters) _then) = _$UpdateCharactersCopyWithImpl;
@useResult
$Res call({
 int characterId, bool isFavourite
});




}
/// @nodoc
class _$UpdateCharactersCopyWithImpl<$Res>
    implements $UpdateCharactersCopyWith<$Res> {
  _$UpdateCharactersCopyWithImpl(this._self, this._then);

  final UpdateCharacters _self;
  final $Res Function(UpdateCharacters) _then;

/// Create a copy of CharacterListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? characterId = null,Object? isFavourite = null,}) {
  return _then(UpdateCharacters(
characterId: null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,isFavourite: null == isFavourite ? _self.isFavourite : isFavourite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
