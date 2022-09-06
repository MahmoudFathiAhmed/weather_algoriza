import 'package:weather_algoriza/data/model/current_model.dart';
import 'package:weather_algoriza/data/model/forecast_model.dart';
import 'package:weather_algoriza/data/model/location_model.dart';
import 'package:weather_algoriza/domain/entity/weather.dart';

class WeatherModel extends Weather {
  const WeatherModel(
      {required super.location,
      required super.current,
      required super.forecast});

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        location: LocationModel.fromJson(json['location']),
        current: CurrentModel.fromJson(json['current']),
        forecast: ForecastModel.fromJson(json['forecast']),
      );
}
