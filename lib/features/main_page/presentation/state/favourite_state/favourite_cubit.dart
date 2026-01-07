import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/constants/hive_boxes.dart';
import 'package:rick_and_morty/features/main_page/domain/entites/character_entities.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/favourite_state/favourite_state.dart';

@injectable
class FavouriteCubit extends Cubit<FavouriteState> {
  final HiveService hiveService;

  FavouriteCubit(this.hiveService) : super(const FavouriteState()) {
    _loadFavourites();
  }

  /// Ilovani ochganda favouritelarni yuklash
  void _loadFavourites() {
    try {
      final favourites = hiveService.getFavourites(); // List<CharacterEntity>
      final favouriteIds = favourites.map((char) => char.id).toSet();
      emit(state.copyWith(favouriteIds: favouriteIds));
    } catch (e) {
      emit(state.copyWith(favouriteIds: {}));
    }
  }


  Future<void> toggleFavourite(CharacterEntities character) async {
    emit(state.copyWith(isLoading: true));

    try {
      await hiveService.addOrRemoveFavourite(character);

      final updatedFavourites = Set<int>.from(state.favouriteIds);
      final characterId = character.id;

      if (updatedFavourites.contains(characterId)) {
        updatedFavourites.remove(characterId);
      } else {
        updatedFavourites.add(characterId);
      }

      emit(state.copyWith(
          favouriteIds: updatedFavourites,
          isLoading: false
      ));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  /// Character favourite ekanligini tekshirish
  bool isFavourite(int characterId) {
    return state.favouriteIds.contains(characterId);
  }

  /// Barcha favourite characterlarni olish
  List<CharacterEntities> getFavouriteCharacters() {
    return hiveService.getFavourites(); // List<CharacterEntity>
  }

  /// Favourite soni
  int getFavouriteCount() {
    return state.favouriteIds.length;
  }

  /// Barcha favouritelarni o'chirish
  Future<void> clearAllFavourites() async {
    emit(state.copyWith(isLoading: true));

    try {
      await hiveService.clearFavourites();
      emit(state.copyWith(
          favouriteIds: {},
          isLoading: false
      ));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  /// Favouritelarni qayta yuklash (refresh uchun)
  void refreshFavourites() {
    _loadFavourites();
  }
}