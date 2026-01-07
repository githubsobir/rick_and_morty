import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/main_page/data/model/character_model.dart';

abstract class CharacterRemoteDataSource {
  Future<Either<Failure, CharacterResponseModel>> getCharacters({
    required int page,
  });


  Future<Either<Failure, CharacterResponseModel>> searchCharacters(String query);
}

@Injectable(as: CharacterRemoteDataSource)
class CharacterRemoteDataSourceImpl implements CharacterRemoteDataSource {
  final Dio dio;

  CharacterRemoteDataSourceImpl(this.dio);

  @override
  Future<Either<Failure, CharacterResponseModel>> getCharacters({
    required int page,
  }) async {
    try {
      final response = await dio.get('api/character/?page=$page');
      final characterResponse = CharacterResponseModel.fromJson(response.data);
      return Right(characterResponse);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }


  @override
  Future<Either<Failure, CharacterResponseModel>> searchCharacters(
      String query,
      ) async {
    try {
      final response = await dio.get(
        'api/character',
        queryParameters: {'name': query},
      );

      // Search ham CharacterResponseModel qaytaradi
      final characterResponse = CharacterResponseModel.fromJson(response.data);

      log("Search results: ${characterResponse.results.length}");

      return Right(characterResponse);
    } on DioException catch (e) {
      log("DioException: ${e.message}");
      return Left(ServerFailure(e.message ?? 'Server error'));
    } catch (e) {
      log("Error: ${e.toString()}");
      return Left(ServerFailure(e.toString()));
    }
  }
}