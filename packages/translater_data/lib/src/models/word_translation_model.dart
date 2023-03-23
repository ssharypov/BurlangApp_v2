import 'package:translater_domain/translater_domain.dart';

class TranslationModel extends TranslationEntity {
  const TranslationModel({required super.value});

  factory TranslationModel.fromJson(Map<String, dynamic> json) {
    return TranslationModel(
      value: (json['value']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
    };
  }
}
