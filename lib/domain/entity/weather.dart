import 'package:equatable/equatable.dart';
import 'package:weather_algoriza/domain/entity/current.dart';
import 'package:weather_algoriza/domain/entity/forecast.dart';
import 'package:weather_algoriza/domain/entity/location.dart';

class Weather extends Equatable {
  final Location location;
  final Current current;
  final Forecast forecast;

  const Weather({
    required this.location,
    required this.current,
    required this.forecast,
  });

  @override
  List<Object> get props => [
        location,
        current,
        forecast,
      ];
}
