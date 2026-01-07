import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/theme/colors_app.dart';
import 'package:rick_and_morty/features/main_page/domain/entites/character_entities.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/favourite_state/favourite_cubit.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/favourite_state/favourite_state.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/get_character/get_character_bloc.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/get_character/get_character_event.dart';
import 'package:rick_and_morty/features/main_page/presentation/widgets/list_items.dart';

@RoutePage()
class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      BlocBuilder<FavouriteCubit, FavouriteState>(
        builder: (context, state) {
          final cubit = context.read<FavouriteCubit>();

          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.favouriteIds.isEmpty) {
            return const Center(
              child: Text(
                "Пока нет любимых персонажей ☹️",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            );
          }

          final favourites = cubit.getFavouriteCharacters();

          return ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: favourites.length,
            itemBuilder: (context, index) {
              final characterMap = favourites[index];
              return CharacterCard(
                character: characterMap,
                isFavorite: true,
                onFavoritePressed: () {
                  context.read<FavouriteCubit>().toggleFavourite(
                    favourites[index],
                  );

                  context.read<GetCharacterBloc>().add(
                    UpdateCharacters(
                      characterId: favourites[index].id,
                      isFavourite: favourites[index].isFavourite,
                    ),
                  );
                  showFavouriteSnackBar(context, false, favourites[index]);

                },
              );
            },
          );
        },
      ));
  }

  void showFavouriteSnackBar(
    BuildContext context,
    bool isAdded,
    CharacterEntities character,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Удалено из избранного'),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
          persist: false,
        backgroundColor: AppColors.primaryButtonColor(context),
        action: SnackBarAction(
          label: 'Отмена',
          backgroundColor: AppColors.borderColor(context),
          textColor: AppColors.textAppBarColor(context),
          onPressed: () {
            context.read<FavouriteCubit>().toggleFavourite(character);
          },
        ),
      ),
    );
  }
}
