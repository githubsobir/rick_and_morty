// favourite_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_state.freezed.dart';

@freezed
abstract class FavouriteState with _$FavouriteState {
  const factory FavouriteState({
    @Default({}) Set<int> favouriteIds,
    @Default(false) bool isLoading,
  }) = _FavouriteState;
}
