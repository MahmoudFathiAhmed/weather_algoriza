import 'package:dartz/dartz.dart';
import 'package:weather_algoriza/core/error/failure.dart';
import 'package:weather_algoriza/domain/entity/weather.dart';

abstract class BaseWeatherRepository{
  Future<Either<Failure,Weather>> getOneDayWeather();
  Future<Either<Failure,Weather>> getSevenDaysWeather();
}