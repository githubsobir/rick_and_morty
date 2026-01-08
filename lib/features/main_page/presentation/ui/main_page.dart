import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:rick_and_morty/core/service/di/injection_container.dart';
import 'package:rick_and_morty/core/theme/colors_app.dart';
import 'package:rick_and_morty/core/theme/theme_cubit.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/favourite_state/favourite_cubit.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/get_character/get_character_bloc.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/get_character/get_character_event.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/navigation_state/navigation_cubit.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/favourite_page/favourite_page.dart';
import 'package:rick_and_morty/features/main_page/presentation/ui/home_page/home_page.dart';
import 'package:rick_and_morty/features/main_page/presentation/widgets/sorting.dart';

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
  late final PageController _pageController;

  @override
  void initState() {
    context.read<NavigationCubit>().changeIndex(0);
    _pageController = PageController(initialPage: 0);

    context.read<GetCharacterBloc>().add(LoadCharacters());
    checkInternet();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<bool> checkInternet() async {
    final InternetConnection internetConnection = InternetConnection();
    final hasConnection = await internetConnection.hasInternetAccess;

    return hasConnection;
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
        leading: IconButton(
          onPressed: () {
            context.read<ThemeCubit>().toggleTheme();
          },
          icon: context.watch<ThemeCubit>().state == ThemeMode.dark
              ? Icon(Icons.nightlight_round, color: Colors.yellow)
              : Icon(Icons.sunny),
        ),
        actions: [
          context.watch<FavouriteCubit>().getFavouriteCharacters().length > 1
              ? sortAppBar(context)
              : SizedBox.shrink(),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: pages,
        onPageChanged: (index) {
          context.read<NavigationCubit>().changeIndex(index);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.watch<NavigationCubit>().state.currentIndex,
        onTap: (index) {
          context.read<NavigationCubit>().changeIndex(index);
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        items: listBottomNavigationBarItems,
      ),
    );
  }

  ///
  List<Widget> pages = [HomePage(), FavouritePage()];

  ///
}
