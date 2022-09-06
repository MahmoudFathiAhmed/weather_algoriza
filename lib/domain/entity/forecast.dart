import 'package:equatable/equatable.dart';
import 'package:weather_algoriza/domain/entity/forecast_day.dart';

class Forecast extends Equatable {
  final List<ForecastDay> forecastDay;

  const Forecast({required this.forecastDay});

  @override
  List<Object> get props => [forecastDay];
}