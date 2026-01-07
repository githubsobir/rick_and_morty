import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_character_event.freezed.dart';


@freezed
class CharacterListEvent with _$CharacterListEvent {
  const factory CharacterListEvent.loadCharacters() = LoadCharacters;
  const factory CharacterListEvent.loadMoreCharacters() = LoadMoreCharacters;
  const factory CharacterListEvent.refreshCharacters() = RefreshCharacters;
  const factory CharacterListEvent.updateCharacter({
    required int characterId,
    required bool isFavourite,
  }) = UpdateCharacters;
}

