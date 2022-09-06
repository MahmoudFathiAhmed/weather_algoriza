import 'package:weather_algoriza/data/model/condition_model.dart';
import 'package:weather_algoriza/domain/entity/hour.dart';

class HourModel extends Hour {
  const HourModel({required super.time,
    required super.tempC,
    required super.condition,
    required super.windKph,
    required super.humidity,
    required super.feelslikeC,
    required super.uv});

  factory HourModel.fromJson(Map<String, dynamic>json)=>
      HourModel(time: json['time'],
          tempC: json['temp_c'],
          condition: ConditionModel.fromJson(json['condition']),
          windKph: json['wind_kph'],
          humidity: json['humidity'],
          feelslikeC: json['feelslike_c'],
          uv: json['uv']);
}
