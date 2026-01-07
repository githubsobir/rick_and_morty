// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CharacterResponseEntities _$CharacterResponseEntitiesFromJson(
  Map<String, dynamic> json,
) => _CharacterResponseEntities(
  info: InfoEntities.fromJson(json['info'] as Map<String, dynamic>),
  results: (json['results'] as List<dynamic>)
      .map((e) => CharacterEntities.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CharacterResponseEntitiesToJson(
  _CharacterResponseEntities instance,
) => <String, dynamic>{'info': instance.info, 'results': instance.results};

_InfoEntities _$InfoEntitiesFromJson(Map<String, dynamic> json) =>
    _InfoEntities(
      count: (json['count'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      next: json['next'] as String?,
      prev: json['prev'] as String?,
    );

Map<String, dynamic> _$InfoEntitiesToJson(_InfoEntities instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };

_CharacterEntities _$CharacterEntitiesFromJson(Map<String, dynamic> json) =>
    _CharacterEntities(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      type: json['type'] as String,
      gender: json['gender'] as String,
      origin: Location.fromJson(json['origin'] as Map<String, dynamic>),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      image: json['image'] as String,
      episode: (json['episode'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      url: json['url'] as String,
      created: json['created'] as String,
      isFavourite: json['isFavourite'] as bool? ?? false,
    );

Map<String, dynamic> _$CharacterEntitiesToJson(_CharacterEntities instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'origin': instance.origin,
      'location': instance.location,
      'image': instance.image,
      'episode': instance.episode,
      'url': instance.url,
      'created': instance.created,
      'isFavourite': instance.isFavourite,
    };

_Location _$LocationFromJson(Map<String, dynamic> json) =>
    _Location(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
};
