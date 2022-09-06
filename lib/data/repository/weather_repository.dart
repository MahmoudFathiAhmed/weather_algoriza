import 'package:dartz/dartz.dart';
import 'package:weather_algoriza/core/error/exceptions.dart';
import 'package:weather_algoriza/core/error/failure.dart';
import 'package:weather_algoriza/data/datasource/weather_remote_datasource.dart';
import 'package:weather_algoriza/domain/entity/weather.dart';
import 'package:weather_algoriza/domain/repository/base_weather_repository.dart';

class WeatherRepository extends BaseWeatherRepository{
  final BaseWeatherRemoteDataSource baseWeatherRemoteDataSource;

  WeatherRepository(this.baseWeatherRemoteDataSource);

  @override
  Future<Either<Failure, Weather>> getOneDayWeather() async{
    final result  = await baseWeatherRemoteDataSource.getOneDayWeather();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.error.message));
    }
  }

  @override
  Future<Either<Failure, Weather>> getSevenDaysWeather() async{
    final result  = await baseWeatherRemoteDataSource.getSevenDaysWeather();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.error.message));
    }
  }
}