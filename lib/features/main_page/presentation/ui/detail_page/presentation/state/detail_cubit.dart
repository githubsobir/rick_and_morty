import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/detail_page/domain/usecase/detail_usecase.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/detail_page/presentation/state/detail_cubit_state.dart';

@injectable
class DetailCubit extends Cubit<DetailState> {
  final DetailUseCase _detailUseCase;

  DetailCubit(this._detailUseCase) : super(const DetailState.initial());

  Future<void> loadDetail(int detailId) async {
    emit(const DetailState.loading());

    final result = await _detailUseCase.calls(detailId);

    return result.fold(
      (failure) => emit(DetailState.error(failure.message ?? "Server error")),
      (detail) => emit(DetailState.success(detail)),
    );
  }
}
