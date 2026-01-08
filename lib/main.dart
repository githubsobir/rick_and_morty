import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:rick_and_morty/core/keys/keys.dart';
import 'package:rick_and_morty/core/network/cubit/internet_cubit.dart';
import 'package:rick_and_morty/core/network/network_info.dart';
import 'package:rick_and_morty/core/route/routes.dart';
import 'package:rick_and_morty/core/service/di/injection_container.dart';
import 'package:rick_and_morty/core/theme/app_theme.dart';
import 'package:rick_and_morty/core/theme/theme_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('saved');
  await configureDependencies();
  runApp(MyApp());
}

final router = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<ThemeCubit>()),
        BlocProvider(create: (_) => getIt<InternetCubit>()),
      ],
      child: AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, themeMode) {
        return MaterialApp.router(
          scaffoldMessengerKey: rootScaffoldMessengerKey,
          routerConfig: router.config(),
          debugShowCheckedModeBanner: false,
          title: 'Rick and Morty',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeMode,
          builder: (context, child) {
            return Stack(
              children: [
                child!,
                BlocBuilder<InternetCubit, InternetStatus>(
                  builder: (context, state) {
                    if (state == InternetStatus.disconnected) {
                      return const Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: NoInternetBanner(),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}


