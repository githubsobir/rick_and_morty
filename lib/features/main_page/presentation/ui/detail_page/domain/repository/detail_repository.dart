import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/detail_page/domain/entities/detail_entities.dart';

abstract class DetailRepository {
  Future<Either<Failure, DetailEntities>> getDetailRepository(int detailId);
}
