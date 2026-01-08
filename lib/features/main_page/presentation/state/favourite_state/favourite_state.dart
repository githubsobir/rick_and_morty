import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/main_page/domain/entites/character_entities.dart';

part 'favourite_state.freezed.dart';

@freezed
abstract class FavouriteState with _$FavouriteState {
  const factory FavouriteState({
    required List<CharacterEntities> listFavourite,
    required bool isLoading,
    required CharacterEntities? lastChangedItem,
    @Default(0) int toggleCount,
  }) = _FavouriteState;
}
