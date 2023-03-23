import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:translater_core/translater_core.dart';
import 'package:translater_domain/src/entities/word_translation_entity.dart';
import 'package:translater_domain/src/repositories/word_translation_repository.dart';

class TranslateWordUsecase
    extends Usecase<List<TranslationEntity>, TranslationParams> {
  final WordTranslationRepository wordTranslationRepository;

  TranslateWordUsecase(this.wordTranslationRepository);

  @override
  Future<Either<Failure, List<TranslationEntity>>> call(
      TranslationParams params) async {
    return await wordTranslationRepository.translateWord(
        params.translateFrom, params.sourceWord);
  }
}

class TranslationParams extends Equatable {
  final TranslateFrom translateFrom;
  final String sourceWord;

  const TranslationParams(
      {required this.translateFrom, required this.sourceWord});
  @override
  List<Object?> get props => [translateFrom, sourceWord];
}
