import 'package:equatable/equatable.dart';

class TranslationEntity extends Equatable {
  final String value;
  const TranslationEntity({required this.value});

  @override
  List<Object?> get props => [value];
}
