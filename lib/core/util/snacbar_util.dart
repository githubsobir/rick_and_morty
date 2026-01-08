import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/theme/colors_app.dart';
import 'package:rick_and_morty/features/main_page/domain/entites/character_entities.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/favourite_state/favourite_cubit.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/get_character/get_character_bloc.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/get_character/get_character_event.dart';

class SnackBarUtils {
  static void showFavouriteSnackBar(
    BuildContext context,
    bool isAdded,
    CharacterEntities character,
  ) {
    final favouriteCubit = context.read<FavouriteCubit>();
    final characterBloc = context.read<GetCharacterBloc>();

    ScaffoldMessenger.of(context).clearSnackBars();


    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          isAdded ? 'Добавлено в избранное' : 'Удалено из избранного',
        ),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.primaryButtonColor(context),
        persist: false,
        action: SnackBarAction(
          label: 'Отмена',
          backgroundColor: AppColors.borderColor(context),
          textColor: AppColors.textAppBarColor(context),
          onPressed: () {

            favouriteCubit.toggleFavourite(character, true);
            characterBloc.add(
              UpdateCharacters(
                characterId: character.id,
                isFavourite: true
              ),
            );
          },
        ),
      ),
    );
  }
}