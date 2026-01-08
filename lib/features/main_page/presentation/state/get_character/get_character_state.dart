import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/main_page/domain/entites/character_entities.dart';

part 'get_character_state.freezed.dart';

@freezed
class CharacterListState with _$CharacterListState {
  const factory CharacterListState.initial() = CharacterListInitial;

  const factory CharacterListState.loading() = CharacterListLoading;

  const factory CharacterListState.loaded({
    required List<CharacterEntities> listCharacters,
    required bool hasMore,
    required bool isLoadingMore,
  }) = CharacterListLoaded;

  const factory CharacterListState.error(String message) = CharacterListError;
}
