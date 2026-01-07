import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/detail_page/data/detail_model/detail_model.dart';

abstract class DetailDataSource {
  Future<Either<Failure, DetailModel>> getDetail(int detailId);
}

@LazySingleton(as: DetailDataSource)
class DetailDataSourceImpl implements DetailDataSource {
  Dio dio;

  DetailDataSourceImpl(this.dio);

  @override
  Future<Either<Failure, DetailModel>> getDetail(int characterId) async {
    try {
      final response = await dio.get('api/character/$characterId');

      final detailResponse = DetailModel.fromJson(response.data);

      return Right(detailResponse);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
