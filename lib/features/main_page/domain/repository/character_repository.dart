import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/main_page/domain/entites/character_entities.dart';

abstract class CharacterRepository {
  Future<Either<Failure, CharacterResponseEntities>> getCharacters({required int pageNum});
}
