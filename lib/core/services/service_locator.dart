import 'package:get_it/get_it.dart';
import 'package:weather_algoriza/data/datasource/weather_remote_datasource.dart';
import 'package:weather_algoriza/data/repository/weather_repository.dart';
import 'package:weather_algoriza/domain/repository/base_weather_repository.dart';
import 'package:weather_algoriza/domain/usecase/get_one_day_Weather.dart';
import 'package:weather_algoriza/domain/usecase/get_seven_day_weather.dart';
import 'package:weather_algoriza/presentation/controller/weather_bloc.dart';

final sl = GetIt.instance;
class ServiceLocator{
  void init(){
    //BLOC
    sl.registerFactory(() => WeatherBloc(sl(), sl()));

    //USE CASES
    sl.registerLazySingleton(() => GetOneDayWeatherUseCase(sl()));
    sl.registerLazySingleton(() => GetSevenDayWeatherUseCase(sl()));


    // REPOSITORY
    sl.registerLazySingleton<BaseWeatherRepository>(
            () => WeatherRepository(sl()));

    // DATA SOURCE
    sl.registerLazySingleton<BaseWeatherRemoteDataSource>(
            () => WeatherRemoteDataSource());
  }
}