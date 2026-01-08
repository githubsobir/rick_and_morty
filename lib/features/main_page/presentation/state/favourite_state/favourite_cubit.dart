// import 'dart:convert';
// import 'dart:developer';
//
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:injectable/injectable.dart';
// import 'package:rick_and_morty/core/constants/hive_boxes.dart';
// import 'package:rick_and_morty/features/main_page/domain/entites/character_entities.dart';
// import 'package:rick_and_morty/features/main_page/presentation/state/favourite_state/favourite_state.dart';
//
// @injectable
// class FavouriteCubit extends Cubit<FavouriteState> {
//   final HiveService hiveService;
//
//   FavouriteCubit(this.hiveService) : super(const FavouriteState()) {
//     _loadFavourites();
//   }
//
//   /// Ilovani ochganda favouritelarni yuklash
//   void _loadFavourites() {
//     try {
//       final favourites = hiveService.getFavourites(); // List<CharacterEntity>
//       final favouriteIds = favourites.map((char) => char.id).toSet();
//       emit(state.copyWith(favouriteIds: favouriteIds));
//     } catch (e) {
//       emit(state.copyWith(favouriteIds: {}));
//     }
//   }
//
//   Future<void> toggleFavourite(CharacterEntities character) async {
//     emit(state.copyWith(isLoading: true));
//
//     try {
//       await hiveService.addOrRemoveFavourite(character);
//
//       final updatedFavourites = Set<int>.from(state.favouriteIds);
//       final characterId = character.id;
//
//       if (updatedFavourites.contains(characterId)) {
//         updatedFavourites.remove(characterId);
//       } else {
//         updatedFavourites.add(characterId);
//       }
//
//       emit(state.copyWith(favouriteIds: updatedFavourites, isLoading: false));
//     } catch (e) {
//       emit(state.copyWith(isLoading: false));
//     }
//   }
//
//   /// Character favourite check
//   bool isFavourite(int characterId) {
//     return state.favouriteIds.contains(characterId);
//   }
//
//   /// Get all characters
//   List<CharacterEntities> getFavouriteCharacters() {
//     return hiveService.getFavourites(); // List<CharacterEntity>
//   }
//
//   /// Favourite count
//   int getFavouriteCount() {
//     return state.favouriteIds.length;
//   }
//
//   /// Barcha favouritelarni o'chirish
//   Future<void> clearAllFavourites() async {
//     emit(state.copyWith(isLoading: true));
//
//     try {
//       await hiveService.clearFavourites();
//       emit(state.copyWith(favouriteIds: {}, isLoading: false));
//     } catch (e) {
//       emit(state.copyWith(isLoading: false));
//     }
//   }
//
//   /// Favourite refresh
//   void refreshFavourites() {
//     _loadFavourites();
//   }
//
//
//
//   void get sortedFavourites {
//     log("message");
//
//     emit(state.copyWith(favouriteIds: {}, isLoading: true));
//     final favourites = hiveService.getFavourites();
//     // final list = favourites
//     //     .where((c) => state.favouriteIds.contains(c.id))
//     //     .toList();
//
//     log(jsonEncode(favourites[0].name).toString());
//     favourites.sort((a, b) => a.name.compareTo(b.name));
//
//     final favouriteIds = favourites.map((char) => char.id).toSet();
//     log(jsonEncode(favourites[0].name).toString());
//     emit(state.copyWith(favouriteIds: favouriteIds, isLoading: false));
//     log("message  2 ");
//
//   }
//
// }
import 'dart:convert';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/constants/hive_boxes.dart';
import 'package:rick_and_morty/features/main_page/domain/entites/character_entities.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/favourite_state/favourite_state.dart';

@injectable
class FavouriteCubit extends Cubit<FavouriteState> {
  final HiveService hiveService;

  FavouriteCubit(this.hiveService)
    : super(
        FavouriteState(
          listFavourite: [],
          isLoading: true,
          lastChangedItem: null,
        ),
      ) {
    _loadFavourites();
  }

  /// get all favourites
  ///
  void _loadFavourites() {
    try {
      final favourites = hiveService.getFavourites();
      emit(state.copyWith(listFavourite: favourites, isLoading: false));
    } catch (e) {
      log("catch _loadFavourites");
      emit(state.copyWith(listFavourite: [], isLoading: false));
    }
  }

  Future<void> toggleFavourite(CharacterEntities character, bool snackBar) async {
    try {
      await hiveService.addOrRemoveFavourite(character);
      final list = hiveService.getFavourites();
        emit(
          state.copyWith(
            listFavourite: list,
            isLoading: false,
            lastChangedItem: character,
            toggleCount: state.toggleCount + 1,
          ),
        );

    } catch (e) {
      log("catch toggleFavourite");
      log(e.toString());
      emit(state.copyWith(isLoading: false));
    }
  }

  /// Get all characters
  List<CharacterEntities> getFavouriteCharacters() {
    try {
      return hiveService.getFavourites(); // List<CharacterEntity>}
    } catch (e) {
      log("catch getFavouriteCharacters");
      return [];
    }
  }

  ///
  ///
  Future<void> sortedFavourites(int sortNum) async {
    try {
      emit(state.copyWith(listFavourite: [], isLoading: true));
      final favourites = hiveService.getFavourites();

      log(jsonEncode(favourites[0].name).toString());

      switch (sortNum) {
        case 0:
          favourites.sort((a, b) => a.name.compareTo(b.name));
          break;
        case 1:
          favourites.sort((a, b) => a.status.compareTo(b.status));
          break;
        case 2:
          favourites.sort((a, b) => a.location.name.compareTo(b.location.name));
          break;
        default:
          favourites;
          break;
      }

      final jsonList = favourites
          .map((char) => jsonEncode(char.toJson()))
          .toList();

      emit(state.copyWith(listFavourite: favourites, isLoading: false));
      hiveService.saveFavouriteOrder(jsonList);
      await Future.delayed(Duration(milliseconds: 250));
      emit(state.copyWith(listFavourite: favourites, isLoading: false));
    } catch (e) {
      log("catch sortedFavourites");
      log(e.toString());
      emit(state.copyWith(isLoading: false));
      _loadFavourites();
    }
  }
}
