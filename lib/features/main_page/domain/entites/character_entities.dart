import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_entities.freezed.dart';
part 'character_entities.g.dart';

@freezed
abstract class CharacterResponseEntities with _$CharacterResponseEntities {
  const factory CharacterResponseEntities({
    required InfoEntities info,
    required List<CharacterEntities> results,
  }) = _CharacterResponseEntities;

  factory CharacterResponseEntities.fromJson(Map<String, dynamic> json) =>
      _$CharacterResponseEntitiesFromJson(json);
}

@freezed
abstract class InfoEntities with _$InfoEntities {
  const factory InfoEntities({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _InfoEntities;

  factory InfoEntities.fromJson(Map<String, dynamic> json) =>
      _$InfoEntitiesFromJson(json);
}

@freezed
abstract class CharacterEntities with _$CharacterEntities {
  const factory CharacterEntities({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required Location origin,
    required Location location,
    required String image,
    required List<String> episode,
    required String url,
    required String created,
    @Default(false) bool isFavourite,
  }) = _CharacterEntities;

  const CharacterEntities._();

  factory CharacterEntities.fromJson(Map<String, dynamic> json) =>
      _$CharacterEntitiesFromJson(json);
}

@freezed
abstract class Location with _$Location {
  const factory Location({required String name, required String url}) =
      _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
