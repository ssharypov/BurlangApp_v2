import 'package:burlang_v2_core/burlang_v2_core.dart';
import 'package:burlang_v2_domain/burlang_v2_domain.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

/// Use case that deals with search requests. Gets a [FindAWordParams] as a params
class FindAWordUseCase implements UseCase<List<WordEntity>, FindAWordParams> {
  @override
  Future<Either<Failure, List<WordEntity>>> call(FindAWordParams params) async {
    return const Right(<WordEntity>[]);
  }
}

/// Search parameters with user [searchRequest]
class FindAWordParams extends Equatable {
  /// The request itself
  final String searchRequest;

  const FindAWordParams({
    required this.searchRequest,
  });

  @override
  List<Object> get props => [searchRequest];
}