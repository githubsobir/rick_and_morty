import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/detail_page/domain/entities/detail_entities.dart';

part 'detail_model.freezed.dart';
part 'detail_model.g.dart';

@freezed
abstract class DetailModel with _$DetailModel {
  const DetailModel._();

  factory DetailModel({
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
  }) = _DetailModel;

  DetailEntities toEntities() => DetailEntities(
    id: id,
    name: name,
    status: status,
    species: species,
    type: type,
    gender: gender,
    origin: origin.toEntities(),
    location: location.toEntities(),
    image: image,
    episode: episode,
    url: url,
    created: created,
  );

  factory DetailModel.fromJson(Map<String, dynamic> json) => DetailModel(
    id: json["id"],
    name: json["name"],
    status: json["status"],
    species: json["species"],
    type: json["type"],
    gender: json["gender"],
    origin: LocationModel.fromJson(json["origin"]),
    location: LocationModel.fromJson(json["location"]),
    image: json["image"],
    episode:  List<String>.from(json["episode"].map((x) => x)),
    url: json["url"],
    created: json["created"],
  );
}

@freezed
abstract class LocationModel with _$LocationModel {
  factory LocationModel({required String name, required String url}) =
      _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      LocationModel(name: json["name"], url: json["url"]);

  const LocationModel._();

  Location toEntities() => Location(name: name, url: url);
}
