import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/detail_page/data/detail_datasource/detail_datasource.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/detail_page/domain/entities/detail_entities.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/detail_page/domain/repository/detail_repository.dart';

@Injectable(as: DetailRepository)
class DetailRepositoryImpl implements DetailRepository {
  final DetailDataSource detailDataSource;

  DetailRepositoryImpl(this.detailDataSource);

  @override
  Future<Either<Failure, DetailEntities>> getDetailRepository(
    int detailId,
  ) async {
    final dataDetail = await detailDataSource.getDetail(detailId);
    return dataDetail.fold(
      (failure) => Left(failure),
      (detail) => Right(detail.toEntities()),
    );
  }
}
