part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class GetOneDayWeatherEvent extends WeatherEvent {
  final String location;

  const GetOneDayWeatherEvent(this.location);

  @override
  List<Object> get props => [location];
}

class GetSevenDaysWeatherEvent extends WeatherEvent {
  final String location;

  const GetSevenDaysWeatherEvent(this.location);

  @override
  List<Object> get props => [location];
}