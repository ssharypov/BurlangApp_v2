import 'package:translater_core/src/errors/failure.dart';
import 'package:translater_core/src/constants/lang_list.dart';
import 'package:dartz/dartz.dart';
import 'package:translater_domain/translater_domain.dart';

class TranslationsRepositoryImpl implements WordTranslationRepository {
  @override
  Future<Either<Failure, List<TranslationEntity>>> translateWord(
      TranslateFrom translateFrom, String sourceWord) {
    // TODO: implement translateWord
    throw UnimplementedError();
  }
}
