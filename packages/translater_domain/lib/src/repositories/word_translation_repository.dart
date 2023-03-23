import 'package:dartz/dartz.dart';
import 'package:translater_core/translater_core.dart';
import 'package:translater_domain/src/entities/word_translation_entity.dart';

abstract class WordTranslationRepository {
  Future<Either<Failure, TranslationEntity>> translateWord(
      TranslateFrom translateFrom, String sourceWord);
  Future<Either<Failure, List<String>>> searchWords(
      TranslateFrom translateFrom, String sourceString);
}
