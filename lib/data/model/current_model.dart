import 'package:weather_algoriza/data/model/condition_model.dart';
import 'package:weather_algoriza/domain/entity/current.dart';

class CurrentModel extends Current {
  const CurrentModel({required super.lastUpdated,
    required super.tempC,
    required super.condition,
    required super.windKph,
    required super.humidity,
    required super.feelsLikeC,
    required super.uv});

  factory CurrentModel.fromJson(Map<String, dynamic>json)=>
      CurrentModel(lastUpdated: json['last_updated'],
          tempC: json['temp_c'],
          condition: ConditionModel.fromJson(json['condition']),
          windKph: json['wind_kph'],
          humidity: json['humidity'],
          feelsLikeC: json['feelslike_c'],
          uv: json['uv']);
}
