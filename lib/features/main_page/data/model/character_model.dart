import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/main_page/domain/entites/character_entities.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
abstract class CharacterResponseModel with _$CharacterResponseModel {
  const CharacterResponseModel._();

  const factory CharacterResponseModel({
    required InfoModel info,
    required List<CharacterModel> results,
  }) = _CharacterResponseModel;

  factory CharacterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterResponseModelFromJson(json);

  CharacterResponseEntities toEntity() {
    return CharacterResponseEntities(
      info: info.toEntity(),
      results: results.map((model) => model.toEntity()).toList(),
    );
  }
}

///
///

@freezed
abstract class InfoModel with _$InfoModel {
  const InfoModel._();

  const factory InfoModel({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _InfoModel;

  factory InfoModel.fromJson(Map<String, dynamic> json) =>
      _$InfoModelFromJson(json);

  InfoEntities toEntity() {
    return InfoEntities(
      count: count,
      pages: pages,
      next: next,
      prev: prev,
    );
  }
}

///
///

@freezed
abstract class CharacterModel with _$CharacterModel {
  const CharacterModel._();

  const factory CharacterModel({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required LocationModel origin,
    required LocationModel location,
    required String image,
    required List<String> episode,
    required String url,
    required String created,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  CharacterEntities toEntity() {
    return CharacterEntities(
      id: id,
      name: name,
      status: status,
      species: species,
      type: type,
      gender: gender,
      origin: origin.toEntity(),
      location: location.toEntity(),
      image: image,
      episode: episode,
      url: url,
      created: created,
    );
  }
}

///
///

@freezed
abstract class LocationModel with _$LocationModel {
  const LocationModel._();

  const factory LocationModel({
    required String name,
    required String url,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Location toEntity() {
    return Location(name: name, url: url);
  }
}