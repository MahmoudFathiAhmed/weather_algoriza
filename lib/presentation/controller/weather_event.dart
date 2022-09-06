part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class GetOneDayWeatherEvent extends WeatherEvent {}

class GetSevenDayWeatherEvent extends WeatherEvent {}
