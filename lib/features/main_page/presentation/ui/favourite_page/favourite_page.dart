import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/util/snacbar_util.dart';
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
  void initState() {
    log("FavouritePage initState");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FavouriteCubit, FavouriteState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.listFavourite.isEmpty) {
            return Center(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text(
                    "Пока нет любимых персонажей ☹️",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: state.listFavourite.length,
            itemBuilder: (context, index) {
              final characterMap = state.listFavourite[index];
              return CharacterCard(
                character: characterMap,
                isFavorite: true,
                onFavoritePressed: () {
                  context.read<FavouriteCubit>().toggleFavourite(
                    state.listFavourite[index],
                    false,
                  );

                  context.read<GetCharacterBloc>().add(
                    UpdateCharacters(
                      characterId: characterMap.id,
                      isFavourite: characterMap.isFavourite,
                    ),
                  );

                  SnackBarUtils.showFavouriteSnackBar(
                    context,
                    false,
                    characterMap,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
