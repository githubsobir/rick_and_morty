// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

/// generated route for
/// [CharacterDetailPage]
class CharacterDetailRoute extends PageRouteInfo<CharacterDetailRouteArgs> {
  CharacterDetailRoute({
    Key? key,
    required int characterId,
    List<PageRouteInfo>? children,
  }) : super(
         CharacterDetailRoute.name,
         args: CharacterDetailRouteArgs(key: key, characterId: characterId),
         initialChildren: children,
       );

  static const String name = 'CharacterDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CharacterDetailRouteArgs>();
      return CharacterDetailPage(key: args.key, characterId: args.characterId);
    },
  );
}

class CharacterDetailRouteArgs {
  const CharacterDetailRouteArgs({this.key, required this.characterId});

  final Key? key;

  final int characterId;

  @override
  String toString() {
    return 'CharacterDetailRouteArgs{key: $key, characterId: $characterId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CharacterDetailRouteArgs) return false;
    return key == other.key && characterId == other.characterId;
  }

  @override
  int get hashCode => key.hashCode ^ characterId.hashCode;
}

/// generated route for
/// [FavouritePage]
class FavouriteRoute extends PageRouteInfo<void> {
  const FavouriteRoute({List<PageRouteInfo>? children})
    : super(FavouriteRoute.name, initialChildren: children);

  static const String name = 'FavouriteRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavouritePage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [MainRoutePage]
class MainRouteRoute extends PageRouteInfo<void> {
  const MainRouteRoute({List<PageRouteInfo>? children})
    : super(MainRouteRoute.name, initialChildren: children);

  static const String name = 'MainRouteRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainRoutePage();
    },
  );
}
