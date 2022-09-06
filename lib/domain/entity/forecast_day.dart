import 'package:equatable/equatable.dart';
import 'package:weather_algoriza/domain/entity/astro.dart';
import 'package:weather_algoriza/domain/entity/day.dart';
import 'package:weather_algoriza/domain/entity/hour.dart';

class ForecastDay extends Equatable {
  final Day day;
  final Astro astro;
  final List<Hour> hour;

  const ForecastDay({
    required this.day,
    required this.astro,
    required this.hour,
  });

  @override
  List<Object> get props => [
        day,
        astro,
        hour,
      ];
}
