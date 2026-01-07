import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/core/constants/hive_boxes.dart';

@singleton
class ThemeCubit extends Cubit<ThemeMode> {
  final HiveService _localDataSource;

  ThemeCubit(this._localDataSource) : super(ThemeMode.system) {
    _loadTheme();
  }

  void _loadTheme() {
    final savedTheme = _localDataSource.getTheme();
    emit(savedTheme);
  }

  bool get isDark => state == ThemeMode.dark;
  bool get isLight => state == ThemeMode.light;
  bool get isSystem => state == ThemeMode.system;

  Future<void> setThemeMode(ThemeMode mode) async {
    await _localDataSource.saveTheme(mode);
    emit(mode);
  }

  Future<void> toggleTheme() async {
    final newMode = isDark ? ThemeMode.light : ThemeMode.dark;
    await setThemeMode(newMode);
  }
}