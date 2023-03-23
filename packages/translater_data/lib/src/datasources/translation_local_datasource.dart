import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:translater_core/translater_core.dart';
import 'package:translater_data/src/models/word_translation_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class TranslationsLocalDatasource {
  Future<List<TranslationModel>> getLastTranslationsFromCache();
  Future<void> putTranslationsToCache(List<TranslationModel> translations);
}

class TranslationsLocalDatasourceImpl implements TranslationsLocalDatasource {
  final SharedPreferences sharedPreferences;
  TranslationsLocalDatasourceImpl({required this.sharedPreferences});

  @override
  Future<List<TranslationModel>> getLastTranslationsFromCache() {
    final jsonTranslationsList =
        sharedPreferences.getStringList(CACHED_TRANSLATIONS);
    if (jsonTranslationsList!.isNotEmpty) {
      return Future.value(jsonTranslationsList
          .map((translation) =>
              TranslationModel.fromJson(json.decode(translation)))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> putTranslationsToCache(List<TranslationModel> translations) {
    final List<String> jsonTranslationsList = translations
        .map((translation) => json.encode(translation.toJson()))
        .toList();
    sharedPreferences.setStringList(CACHED_TRANSLATIONS, jsonTranslationsList);
    if (kDebugMode) {
      print('Translations to write Cache: $jsonTranslationsList');
    }
    // ignore: void_checks
    return Future.value(jsonTranslationsList);
  }
}
