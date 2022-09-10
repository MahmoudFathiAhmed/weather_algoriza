import 'package:dartz/dartz.dart';
import 'package:weather_algoriza/core/error/failure.dart';
import 'package:weather_algoriza/domain/entity/weather.dart';
import 'package:weather_algoriza/domain/usecase/get_one_day_Weather.dart';
import 'package:weather_algoriza/domain/usecase/get_seven_day_weather.dart';

abstract class BaseWeatherRepository{
  Future<Either<Failure,Weather>> getOneDayWeather(OneDayWeatherParameters parameters);
  Future<Either<Failure,Weather>> getSevenDaysWeather(SevenDayWeatherParameters parameters);
}