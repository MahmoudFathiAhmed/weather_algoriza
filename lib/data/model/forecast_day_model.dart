import 'package:weather_algoriza/data/model/astro_model.dart';
import 'package:weather_algoriza/data/model/day_model.dart';
import 'package:weather_algoriza/data/model/hour_model.dart';
import 'package:weather_algoriza/domain/entity/forecast_day.dart';

class ForecastDayModel extends ForecastDay {
  const ForecastDayModel({
    required super.date,
    required super.day,
    required super.astro,
    required super.hour,
  });

  factory ForecastDayModel.fromJson(Map<String, dynamic> json) =>
      ForecastDayModel(
        date: json['date'],
        day: DayModel.fromJson(json['day']),
        astro: AstroModel.fromJson(json['astro']),
        hour: List<HourModel>.from(json['hour'].map((e)=>HourModel.fromJson(e))),
      );
}
