import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/detail_page/domain/entities/detail_entities.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/detail_page/domain/repository/detail_repository.dart';

@injectable
class DetailUseCase {
  DetailRepository detailRepository;

  DetailUseCase(this.detailRepository);

  Future<Either<Failure, DetailEntities>> calls(int detailId) async {
    return detailRepository.getDetailRepository(detailId);
  }
}
