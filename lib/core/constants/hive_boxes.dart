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

  /// Get Favourite
  List<CharacterEntities> getFavourites() {
    try {
      final data = _box.get(_favouriteKey);

      if (data is List && data.isNotEmpty) {
        return data
            .map((item) {
              try {
                final json = jsonDecode(item as String);
                return CharacterEntities.fromJson(json);
              } catch (e) {
                log("Error parsing favourite item: $e");
                return [];
              }
            })
            .whereType<CharacterEntities>()
            .toList();
      }

      return [];
    } catch (e) {
      log("getFavourites error: $e");
      return [];
    }
  }

  /// Favourite add or remove
  Future<void> addOrRemoveFavourite(CharacterEntities character) async {
    try {
      final favourites = getFavourites();

      log("1 addOrRemoveFavourite uzunligi ${favourites.length.toString()}");

      if (favourites.isNotEmpty) {
        final index = favourites.indexWhere((fav) => fav.id == character.id);
        List<String> jsonList;

        if (index != -1) {
          favourites.removeAt(index);
          log("2 removeAt dan keyin ${favourites.length.toString()}");
        } else {
          favourites.add(character);
          log("3 add dan keyin ${favourites.length.toString()}");
        }

        log("4 Hivega saqlanishidan oldin favourites ${favourites.length.toString()}");
        jsonList = favourites.map((char) {
          return jsonEncode(char.toJson());
        }).toList();
        log("5 Hivega saqlanishidan oldin jsonList ${jsonList.length.toString()}");
        await _box.put(_favouriteKey, jsonList);
      } else {
        List<String> jsonList;
        favourites.add(character);
        log("6 Hivega saqlanishidan oldin favourites ${favourites.length.toString()}");
        jsonList = favourites.map((char) {
          return jsonEncode(char.toJson());
        }).toList();
        log("7 Hivega saqlanishidan oldin jsonList ${jsonList.length.toString()}");
        await _box.put(_favouriteKey, jsonList);
      }


    } catch (e) {
      log("addOrRemoveFavourite error: $e");
    }
  }

  Future<void> saveFavouriteOrder(List<String> data) async {
    await _box.put(_favouriteKey, data);
  }

  /// clear all favourite
  Future<void> clearFavourites() async {
    try {
      await _box.delete(_favouriteKey);
    } catch (e) {
      log("clearFavourites error: $e");
    }
  }
}
