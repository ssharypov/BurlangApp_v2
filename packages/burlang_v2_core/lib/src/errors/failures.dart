import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure([List properties = const <dynamic>[]]);
}

/// Connection problems
class NetworkFailure extends Failure {
  @override
  List<Object?> get props => [];
}

/// Failures of server side. For example, unauthorized access.
class ServerFailure extends Failure {
  @override
  List<Object?> get props => [];
}

/// Failures that happens when working with shared preferences
class LocalStorageFailure extends Failure {
  @override
  List<Object?> get props => [];
}
