import 'package:weather_algoriza/domain/entity/condition.dart';

class ConditionModel extends Condition {
  const ConditionModel({required super.text, required super.icon});

  factory ConditionModel.fromJson(Map<String, dynamic> json) => ConditionModel(
        text: json['text'],
        icon: json['icon'],
      );
}
