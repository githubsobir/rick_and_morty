import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_entities.freezed.dart';
part 'detail_entities.g.dart';

@freezed
abstract class DetailEntities with _$DetailEntities {
  const DetailEntities._();

  factory DetailEntities({
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
  }) = _DetailEntities;

  factory DetailEntities.fromJson(Map<String, dynamic> json) =>
       DetailEntities(
        id: json["id"],
        name: json["name"],
        status: json["status"],
        species: json["species"],
        type: json["type"],
        gender: json["gender"],
        origin: Location.fromJson(json["origin"]),
        location: Location.fromJson(json["location"]),
        image: json["image"],
        episode:  List<String>.from(json["episode"].map((x) => x)),
        url: json["url"],
        created: json["created"],
      );
}

@freezed
abstract class Location with _$Location {
  factory Location({required String name, required String url}) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      Location(name: json["name"], url: json["url"]);
}
