import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/service/di/injection_container.dart';
import 'package:rick_and_morty/core/theme/colors_app.dart';
import 'package:rick_and_morty/core/theme/theme_cubit.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/favourite_state/favourite_cubit.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/get_character/get_character_bloc.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/get_character/get_character_event.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/navigation_state/navigation_cubit.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/favourite_page/favourite_page.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/home_page/home_page.dart';

@RoutePage()
class MainRoutePage extends StatelessWidget {
  const MainRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetCharacterBloc>(
          create: (context) =>
              getIt<GetCharacterBloc>()
                ..add(CharacterListEvent.loadCharacters()),
        ),

        BlocProvider<NavigationCubit>(
          create: (context) => getIt<NavigationCubit>(),
        ),
        BlocProvider<FavouriteCubit>(
          create: (context) => getIt<FavouriteCubit>(),
        ),
      ],
      child: NavigationBarPage(),
    );
  }
}

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  @override
  void initState() {
    context.read<GetCharacterBloc>().add(LoadCharacters());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> listBottomNavigationBarItems = [
      BottomNavigationBarItem(
        label: "",
        icon: Icon(Icons.home, color: Colors.grey.shade600),
        activeIcon: Icon(
          Icons.home,
          color: AppColors.primaryButtonColor(context),
        ),
      ),
      BottomNavigationBarItem(
        label: "",
        icon: Icon(Icons.favorite_outline_sharp, color: Colors.grey.shade600),
        activeIcon: Icon(
          Icons.favorite,
          color: AppColors.primaryButtonColor(context),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Rick and Morty"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemeCubit>().toggleTheme();
            },
            icon: context.watch<ThemeCubit>().state == ThemeMode.dark
                ? Icon(Icons.nightlight_round, color: Colors.yellow)
                : Icon(Icons.sunny),
          ),
        ],
      ),
      body: pages[context.watch<NavigationCubit>().state.currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.watch<NavigationCubit>().state.currentIndex,
        onTap: context.read<NavigationCubit>().changeIndex,
        items: listBottomNavigationBarItems,
      ),
    );
  }

  ///
  List<Widget> pages = [HomePage(), FavouritePage()];

  ///

}
