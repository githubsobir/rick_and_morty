import 'package:rick_and_morty/features/main_page/data/model/character_model.dart';
import 'package:rick_and_morty/features/main_page/domain/entites/character_entities.dart';

class CharacterMapper {
  static CharacterEntities toEntity(
    CharacterModel model, {
    bool isFavourite = false,
  }) {
    return CharacterEntities(
      id: model.id,
      name: model.name,
      status: model.status,
      species: model.species,
      type: model.type,
      gender: model.gender,
      origin: Location(name: model.origin.name, url: model.origin.url),
      location: Location(name: model.location.name, url: model.location.url),
      image: model.image,
      episode: model.episode,
      url: model.url,
      created: model.created,
      isFavourite: isFavourite,
    );
  }

  static List<CharacterEntities> toEntityList(
    List<CharacterModel> models, {
    Set<int> favouriteIds = const {},
  }) {
    return models.map((model) {
      return toEntity(model, isFavourite: favouriteIds.contains(model.id));
    }).toList();
  }
}
