import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/detail_page/domain/entities/detail_entities.dart';

part 'detail_cubit_state.freezed.dart';


@freezed
class DetailState with _$DetailState {
  const factory DetailState.initial() = _Initial;
  const factory DetailState.loading() = _Loading;
  const factory DetailState.success(DetailEntities detail) = _Success;
  const factory DetailState.error(String message) = _Error;
}
