import 'package:weather_algoriza/data/model/condition_model.dart';
import 'package:weather_algoriza/domain/entity/day.dart';

class DayModel extends Day {
  const DayModel(
      {required super.maxTempC,
      required super.minTempC,
      required super.avgTempC,
      required super.maxWindKph,
      required super.avgHumidity,
      required super.condition,
      required super.uv});

  factory DayModel.fromJson(Map<String, dynamic> json) => DayModel(
      maxTempC: json['maxtemp_c'],
      minTempC: json['mintemp_c'],
      avgTempC: json['avgtemp_c'],
      maxWindKph: json['maxwind_kph'],
      avgHumidity: json['avghumidity'],
      condition: ConditionModel.fromJson(json['condition']),
      uv: json['uv']);
}
