import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:translater_core/translater_core.dart';
import 'package:translater_domain/src/repositories/word_translation_repository.dart';

class SearchWordUsecase extends Usecase<List<String>, SearchWordParams> {
  final WordTranslationRepository wordTranslationRepository;
  SearchWordUsecase({required this.wordTranslationRepository});

  @override
  Future<Either<Failure, List<String>>> call(SearchWordParams params) async {
    return await wordTranslationRepository.searchWords(
        params.translateFrom, params.sourceString);
  }
}

class SearchWordParams extends Equatable {
  final TranslateFrom translateFrom;
  final String sourceString;

  const SearchWordParams(
      {required this.translateFrom, required this.sourceString});
  @override
  List<Object?> get props => [translateFrom, sourceString];
}
