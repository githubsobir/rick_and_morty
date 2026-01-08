// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;

import '../../../features/main_page/data/datasource/character_local_datasource.dart'
    as _i948;
import '../../../features/main_page/data/datasource/character_remote_datasource.dart'
    as _i65;
import '../../../features/main_page/data/repository_impl/repository_impl.dart'
    as _i953;
import '../../../features/main_page/domain/repository/character_repository.dart'
    as _i1000;
import '../../../features/main_page/domain/usecase/character_usecase.dart'
    as _i267;
import '../../../features/main_page/presentation/state/favourite_state/favourite_cubit.dart'
    as _i122;
import '../../../features/main_page/presentation/state/get_character/get_character_bloc.dart'
    as _i184;
import '../../../features/main_page/presentation/state/navigation_state/navigation_cubit.dart'
    as _i268;
import '../../../features/main_page/presentation/ui/detail_page/data/detail_datasource/detail_datasource.dart'
    as _i387;
import '../../../features/main_page/presentation/ui/detail_page/data/detail_repository_impl/detail_repository_impl.dart'
    as _i632;
import '../../../features/main_page/presentation/ui/detail_page/domain/repository/detail_repository.dart'
    as _i507;
import '../../../features/main_page/presentation/ui/detail_page/domain/usecase/detail_usecase.dart'
    as _i994;
import '../../../features/main_page/presentation/ui/detail_page/presentation/state/detail_cubit.dart'
    as _i960;
import '../../constants/hive_boxes.dart' as _i242;
import '../../network/cubit/internet_cubit.dart' as _i818;
import '../../theme/theme_cubit.dart' as _i502;
import 'injection_container.dart' as _i809;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  final networkModule = _$NetworkModule();
  gh.factory<_i268.NavigationCubit>(() => _i268.NavigationCubit());
  gh.singleton<_i242.HiveService>(() => _i242.HiveService());
  gh.singleton<_i361.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i161.InternetConnection>(
    () => networkModule.internetConnection,
  );
  gh.lazySingleton<_i387.DetailDataSource>(
    () => _i387.DetailDataSourceImpl(gh<_i361.Dio>()),
  );
  gh.factory<_i507.DetailRepository>(
    () => _i632.DetailRepositoryImpl(gh<_i387.DetailDataSource>()),
  );
  gh.factory<_i65.CharacterRemoteDataSource>(
    () => _i65.CharacterRemoteDataSourceImpl(gh<_i361.Dio>()),
  );
  gh.factory<_i994.DetailUseCase>(
    () => _i994.DetailUseCase(gh<_i507.DetailRepository>()),
  );
  gh.factory<_i122.FavouriteCubit>(
    () => _i122.FavouriteCubit(gh<_i242.HiveService>()),
  );
  gh.factory<_i960.DetailCubit>(
    () => _i960.DetailCubit(gh<_i994.DetailUseCase>()),
  );
  gh.factory<_i818.InternetCubit>(
    () => _i818.InternetCubit(gh<_i161.InternetConnection>()),
  );
  gh.factory<_i948.CharacterLocalDataSource>(
    () => _i948.CharacterLocalDataSourceImpl(gh<_i242.HiveService>()),
  );
  gh.singleton<_i502.ThemeCubit>(
    () => _i502.ThemeCubit(gh<_i242.HiveService>()),
  );
  gh.lazySingleton<_i1000.CharacterRepository>(
    () => _i953.CharacterRepositoryImpl(
      remoteDataSource: gh<_i65.CharacterRemoteDataSource>(),
      localDataSource: gh<_i948.CharacterLocalDataSource>(),
      internetConnection: gh<_i161.InternetConnection>(),
      hiveService: gh<_i242.HiveService>(),
    ),
  );
  gh.factory<_i267.CharacterUseCase>(
    () => _i267.CharacterUseCase(gh<_i1000.CharacterRepository>()),
  );
  gh.factory<_i184.GetCharacterBloc>(
    () => _i184.GetCharacterBloc(
      gh<_i267.CharacterUseCase>(),
      gh<_i242.HiveService>(),
    ),
  );
  return getIt;
}

class _$RegisterModule extends _i809.RegisterModule {}

class _$NetworkModule extends _i809.NetworkModule {}
