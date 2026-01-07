import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/main_page/domain/entites/character_entities.dart';
import 'package:rick_and_morty/features/main_page/domain/repository/character_repository.dart';

@injectable
class CharacterUseCase {
  final CharacterRepository characterRepository;

  CharacterUseCase(this.characterRepository);

  Future<Either<Failure, CharacterResponseEntities>> call({
    required int pageNumbers,
  }) {
    return characterRepository.getCharacters(pageNum: pageNumbers);
  }
}



