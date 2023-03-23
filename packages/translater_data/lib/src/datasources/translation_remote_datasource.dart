import 'dart:convert';

import 'package:translater_core/translater_core.dart';
import 'package:translater_data/src/models/word_translation_model.dart';
import 'package:http/http.dart' as http;

abstract class TranslationsRemoteDatasource {
  // https://burlang.ru/api/v1/russian-word/translate?q=sourceWord
  Future<List<TranslationModel>> translateWord(
      TranslateFrom translateFrom, String sourceWord);

  // https://burlang.ru/api/v1/russian-word/search?q=sourceString
  // Future<List<String>> searchWords(
  //     TranslateFrom translateFrom, String sourceString);
}

class TranslationsRemoteDatasourceImpl implements TranslationsRemoteDatasource {
  final http.Client client;

  TranslationsRemoteDatasourceImpl({required this.client});

  @override
  Future<List<TranslationModel>> translateWord(
      TranslateFrom translateFrom, String sourceWord) async {
    final response = await client.get(
      Uri.parse(
          "https://burlang.ru/api/v1/russian-word/translate?q=$sourceWord"),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      final translations = json.decode(response.body);
      return (translations['translations'] as List)
          .map((translation) => TranslationModel.fromJson(translation))
          .toList();
    } else {
      throw ServerException();
    }
  }

  // @override
  // Future<List<String>?> searchWords(
  //     TranslateFrom translateFrom, String sourceString) async {
  //   return null;
  // }
}
