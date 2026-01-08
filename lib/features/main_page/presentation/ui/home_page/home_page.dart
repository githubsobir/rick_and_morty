import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/keys/keys.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/favourite_state/favourite_cubit.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/favourite_state/favourite_state.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/get_character/get_character_bloc.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/get_character/get_character_event.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/get_character/get_character_state.dart';
import 'package:rick_and_morty/features/main_page/presentation/widgets/list_items.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    log("HomePage");
    rootScaffoldMessengerKey.currentState!.clearSnackBars();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<GetCharacterBloc>().add(LoadMoreCharacters());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<FavouriteCubit, FavouriteState>(
        listenWhen: (previous, current) {
          return previous.toggleCount != current.toggleCount;
        },
        listener: (context, state) {
          final changed = state.lastChangedItem;
          if (changed != null) {
            context.read<GetCharacterBloc>().add(
              UpdateCharacters(
                characterId: changed.id,
                isFavourite: state.listFavourite.any((c) => c.id == changed.id),
              ),
            );
          }
        },
        child: BlocBuilder<GetCharacterBloc, CharacterListState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Error: $message',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        context.read<GetCharacterBloc>().add(LoadCharacters());
                      },
                      child: const Text('Try again'),
                    ),
                  ],
                ),
              ),

              loaded: (characters, hasMore, isLoadingMore) {
                if (characters.isEmpty) {
                  return const Center(child: Text('No info'));
                }

                return RefreshIndicator.adaptive(
                  onRefresh: () async {
                    context.read<GetCharacterBloc>().add(RefreshCharacters());
                    await Future.delayed(const Duration(seconds: 1));
                  },

                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: characters.length + (isLoadingMore ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == characters.length) {
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                      final character = characters[index];
                      return CharacterCard(
                        character: character,
                        isFavorite: character.isFavourite,
                        onFavoritePressed: () {
                          try {
                            context.read<FavouriteCubit>().toggleFavourite(
                              character,
                              false,
                            );
                          } catch (e) {
                            log(e.toString());
                          }
                        },
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
