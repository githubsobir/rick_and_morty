
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/constants/hive_boxes.dart';
import 'package:rick_and_morty/features/main_page/domain/usecase/character_usecase.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/get_character/get_character_event.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/get_character/get_character_state.dart';

@injectable
class GetCharacterBloc extends Bloc<CharacterListEvent, CharacterListState> {
  final CharacterUseCase characterUseCase;
  int _currentPage = 1;
  HiveService localSavedData;

  GetCharacterBloc(this.characterUseCase, this.localSavedData)
    : super(const CharacterListState.initial()) {
    on<LoadCharacters>(_onLoadCharacters);
    on<LoadMoreCharacters>(_onLoadMoreCharacters);
    on<RefreshCharacters>(_onRefreshCharacters);
    on<UpdateCharacters>(_updateCharacter);
  }

  Future<void> _onLoadCharacters(
    LoadCharacters event,
    Emitter<CharacterListState> emit,
  ) async {
    emit(const CharacterListState.loading());
    final result = await characterUseCase(pageNumbers: 1);
    result.fold(
      (failure) => emit(CharacterListState.error(failure.message ?? "Error")),
      (characters) {
        _currentPage = 1;
        emit(
          CharacterListState.loaded(
            listCharacters: characters.results,
            hasMore: characters.info.next?.isNotEmpty ?? false,
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoreCharacters(
    LoadMoreCharacters event,
    Emitter<CharacterListState> emit,
  ) async {
    if (state is! CharacterListLoaded) return;

    final currentState = state as CharacterListLoaded;
    if (currentState.isLoadingMore || !currentState.hasMore) return;

    emit(currentState.copyWith(isLoadingMore: true));

    final result = await characterUseCase(pageNumbers: _currentPage + 1);

    result.fold(
      (failure) => emit(currentState.copyWith(isLoadingMore: false)),
      (newCharacters) {
        _currentPage++;
        emit(
          CharacterListState.loaded(
            listCharacters: [
              ...currentState.listCharacters,
              ...newCharacters.results,
            ],
            hasMore: newCharacters.info.next?.isNotEmpty ?? false,
            isLoadingMore: false,
          ),
        );
      },
    );
  }

  Future<void> _onRefreshCharacters(
    RefreshCharacters event,
    Emitter<CharacterListState> emit,
  ) async {
    final result = await characterUseCase(pageNumbers: 1);

    result.fold(
      (failure) => emit(CharacterListState.error(failure.message ?? "Error")),
      (characters) {
        _currentPage = 1;
        emit(
          CharacterListState.loaded(
            listCharacters: characters.results,
            hasMore: characters.info.next?.isNotEmpty ?? false,
          ),
        );
      },
    );
  }

  Future<void> _updateCharacter(
    UpdateCharacters event,
    Emitter<CharacterListState> emit,
  ) async {
    final currentState = state;

    if (currentState is CharacterListLoaded) {
      final updatedList = currentState.listCharacters.map((character) {
        if (character.id == event.characterId) {
          return character.copyWith(isFavourite: !character.isFavourite);
        }
        return character;
      }).toList();

      emit(currentState.copyWith(listCharacters: updatedList));
    }
  }

  // Future<void> _updateCharacter(
  //   UpdateCharacters event,
  //   Emitter<CharacterListState> emit,
  // ) async {
  //   try {
  //     final updatedList =
  //         CharacterResponseEntities.fromJson(
  //           jsonDecode(localSavedData.getCharacters()!),
  //         ).map((character) {
  //           if (character.results == event.characterId) {
  //             return character.copyWith(isFavourite: event.isFavourite);
  //           }
  //           return character;
  //         }).toList();
  //
  //     emit(CharacterListState.loaded(listCharacters: updatedList));
  //   } catch (e) {
  //     log(e.toString());
  //     log("ERROR");
  //   }
  // }
}
