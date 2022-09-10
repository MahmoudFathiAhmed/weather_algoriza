import 'package:dartz/dartz.dart';
import 'package:weather_algoriza/core/error/exceptions.dart';
import 'package:weather_algoriza/core/error/failure.dart';
import 'package:weather_algoriza/data/datasource/weather_remote_datasource.dart';
import 'package:weather_algoriza/domain/entity/weather.dart';
import 'package:weather_algoriza/domain/repository/base_weather_repository.dart';
import 'package:weather_algoriza/domain/usecase/get_one_day_Weather.dart';
import 'package:weather_algoriza/domain/usecase/get_seven_day_weather.dart';

class WeatherRepository extends BaseWeatherRepository{
  final BaseWeatherRemoteDataSource baseWeatherRemoteDataSource;

  WeatherRepository(this.baseWeatherRemoteDataSource);

  @override
  Future<Either<Failure, Weather>> getOneDayWeather(OneDayWeatherParameters parameters) async{
    final result  = await baseWeatherRemoteDataSource.getOneDayWeather(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.error.message));
    }
  }

  @override
  Future<Either<Failure, Weather>> getSevenDaysWeather(SevenDayWeatherParameters parameters) async{
    final result  = await baseWeatherRemoteDataSource.getSevenDaysWeather(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.error.message));
    }
  }
}