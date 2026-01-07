import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/constants/hive_boxes.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/main_page/data/model/character_model.dart';
import 'package:injectable/injectable.dart';

abstract class CharacterLocalDataSource {
  Future<Either<Failure, CharacterResponseModel>> getCachedCharacters();

  Future<void> saveCharacters(String data); // List emas, Map
}

@Injectable(as: CharacterLocalDataSource)
class CharacterLocalDataSourceImpl implements CharacterLocalDataSource {
  HiveService localSavedData;

  CharacterLocalDataSourceImpl(this.localSavedData);

  @override
  Future<void> saveCharacters(String data) async {
    return localSavedData.saveCharacters(data);
  }

  @override
  Future<Either<Failure, CharacterResponseModel>> getCachedCharacters() async {
    final cachedData = localSavedData.getCharacters();

    if (cachedData == null) {
      return Left(Failure.emptyResponse('No cached data found'));
    }

    try {
      final response = CharacterResponseModel.fromJson(jsonDecode(cachedData));
      return Right(response);
    } catch (e) {
      return Left(Failure.cacheFailure('Failed to parse cached data: ${e.toString()}'));
    }
  }
}