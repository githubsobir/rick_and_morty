import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:rick_and_morty/core/constants/hive_boxes.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/main_page/data/datasource/character_local_datasource.dart';
import 'package:rick_and_morty/features/main_page/data/datasource/character_remote_datasource.dart';
import 'package:rick_and_morty/features/main_page/domain/entites/character_entities.dart';
import 'package:rick_and_morty/features/main_page/domain/repository/character_repository.dart';

@LazySingleton(as: CharacterRepository)
class CharacterRepositoryImpl implements CharacterRepository {
  final CharacterRemoteDataSource remoteDataSource;
  final CharacterLocalDataSource localDataSource;
  final InternetConnection internetConnection;
  final HiveService hiveService;

  CharacterRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.internetConnection,
    required this.hiveService,
  });

  @override
  Future<Either<Failure, CharacterResponseEntities>> getCharacters({
    required int pageNum,
  }) async {
    // Favourite IDs
    final favourites = hiveService.getFavourites();
    final favouriteIds = favourites.map((char) => char.id).toSet();

    final hasConnection = await internetConnection.hasInternetAccess;

    if (hasConnection) {
      // check Internet
      final remoteResult = await remoteDataSource.getCharacters(page: pageNum);

      return remoteResult.fold(
            (failure) async {
          // read cache
          log("Remote failure: $failure, loading from cache");
          var data = await localDataSource.getCachedCharacters();
          return data.fold(
                (cacheFailure) {
              log("Cache failure: $cacheFailure");
              return Left(cacheFailure);
            },
                (cachedResponse) {
              // Cache => entity
              final entity = _toEntityWithFavourites(
                cachedResponse.toEntity(),
                favouriteIds,
              );
              return Right(entity);
            },
          );
        },
            (response) async {
          log("Remote success, saving to cache");

          // Cache ga saqlash
          await localDataSource.saveCharacters(jsonEncode(response).toString());

          final entity = _toEntityWithFavourites(
            response.toEntity(),
            favouriteIds,
          );

          return Right(entity);
        },
      );
    } else {
      log("No internet, loading from cache");
      final cachedResult = await localDataSource.getCachedCharacters();

      return cachedResult.fold(
            (failure) {
          log("Cache failure: $failure");
          return Left(failure);
        },
            (cachedResponse) {
          log("Cache success");

          final entity = _toEntityWithFavourites(
            cachedResponse.toEntity(),
            favouriteIds,
          );

          return Right(entity);
        },
      );
    }
  }

  /// Entity ga favourite
  CharacterResponseEntities _toEntityWithFavourites(
      CharacterResponseEntities response,
      Set<int> favouriteIds,
      ) {

    final updatedCharacters = response.results.map((character) {
      return character.copyWith(
        isFavourite: favouriteIds.contains(character.id),
      );
    }).toList();

    return response.copyWith(results: updatedCharacters);
  }

// Agar kerak bo'lsa - bitta characterni olish
// @override
// Future<Either<Failure, CharacterEntities>> getCharacterById(int id) async {
//   final hasConnection = await internetConnection.hasInternetAccess;
//
//   if (hasConnection) {
//     final result = await remoteDataSource.getCharacterById(id);
//
//     return result.fold(
//       (failure) => Left(failure),
//       (model) {
//         final isFav = hiveService.isFavourite(id);
//         final entity = model.toEntity().copyWith(isFavourite: isFav);
//         return Right(entity);
//       },
//     );
//   } else {
//     return Left(Failure.noConnection('No internet connection'));
//   }
// }
}