import 'package:burlang_v2_core/burlang_v2_core.dart';
import 'package:burlang_v2_core/src/errors/failures.dart';
import 'package:burlang_v2_domain/src/entities/word_entity.dart';
import 'package:dartz/dartz.dart';

class FindAWordUseCase implements UseCase<List<WordEntity>, NoParams> {
  @override
  Future<Either<Failure, dynamic>> call(params) {}
}
