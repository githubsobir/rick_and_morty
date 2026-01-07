import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/detail_page/presentation/detail_page.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/favourite_page/favourite_page.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/home_page/home_page.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/main_page.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: MainRouteRoute.page, path: "/main_page", initial: true),
    AutoRoute(page: CharacterDetailRoute.page, path: '/character/:characterId',),
    AutoRoute(page: FavouriteRoute.page, path: "/favourite_page"),
  ];
}
