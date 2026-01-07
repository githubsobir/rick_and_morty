import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/features/main_page/domain/entites/character_entities.dart';

@singleton
class HiveService {
  static const _key = 'theme_mode';
  static const _characterKey = 'characters';
  static const _favouriteKey = 'favourites';
  static const _boxName = 'saved';

  Box get _box => Hive.box(_boxName);

  // Characters uchun (eski)
  Future<void> saveCharacters(String data) async {
    try {
      await _box.put(_characterKey, data);
    } catch (e) {
      log("saveCharacters error: $e");
    }
  }

  String? getCharacters() {
    try {
      final data = _box.get(_characterKey);
      if (data == null) return null;
      return data;
    } catch (e) {
      log("getCharacters error: $e");
    }
    return null;
  }

  // Theme uchun
  Future<void> saveTheme(ThemeMode mode) async {
    await _box.put(_key, mode.index);
  }

  ThemeMode getTheme() {
    final index = _box.get(_key, defaultValue: 0);
    return ThemeMode.values[index];
  }

  // ===== FAVOURITES (YANGI) =====

  /// Favouritelarni olish
  List<CharacterEntities> getFavourites() {
    try {
      final data = _box.get(_favouriteKey, defaultValue: <String>[]);

      if (data is List && data.isNotEmpty) {
        return data.map((item) {
          try {
            final json = jsonDecode(item as String);
            return CharacterEntities.fromJson(json);
          } catch (e) {
            log("Error parsing favourite item: $e");
            return null;
          }
        })
            .whereType<CharacterEntities>() // null larni filter qilish
            .toList();
      }

      return [];
    } catch (e) {
      log("getFavourites error: $e");
      return [];
    }
  }

  /// Favourite qo'shish yoki o'chirish
  Future<void> addOrRemoveFavourite(CharacterEntities character) async {
    try {
      // Avval barcha favouritelarni olamiz
      final favourites = getFavourites();

      // Mavjudligini tekshiramiz
      final index = favourites.indexWhere(
              (fav) => fav.id == character.id
      );

      List<String> jsonList;

      if (index != -1) {
        // Agar mavjud bo'lsa - o'chiramiz
        favourites.removeAt(index);
      } else {
        // Agar yo'q bo'lsa - qo'shamiz
        favourites.add(character);
      }

      // List<CharacterEntity> ni List<String> ga aylantiramiz
      jsonList = favourites.map((char) {
        return jsonEncode(char.toJson());
      }).toList();

      // Hive ga saqlaymiz
      await _box.put(_favouriteKey, jsonList);

    } catch (e) {
      log("addOrRemoveFavourite error: $e");
    }
  }

  /// Character favourite ekanligini tekshirish
  bool isFavourite(int characterId) {
    try {
      final favourites = getFavourites();
      return favourites.any((char) => char.id == characterId);
    } catch (e) {
      log("isFavourite error: $e");
      return false;
    }
  }

  /// Favourite soni
  int getFavouriteCount() {
    return getFavourites().length;
  }

  /// Barcha favouritelarni o'chirish
  Future<void> clearFavourites() async {
    try {
      await _box.delete(_favouriteKey);
    } catch (e) {
      log("clearFavourites error: $e");
    }
  }
}