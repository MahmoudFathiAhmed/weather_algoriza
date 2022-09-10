import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_algoriza/core/error/failure.dart';
import 'package:weather_algoriza/core/usecase/base_use_case.dart';
import 'package:weather_algoriza/domain/entity/weather.dart';
import 'package:weather_algoriza/domain/repository/base_weather_repository.dart';

class GetSevenDaysWeatherUseCase extends BaseUseCase<Weather, SevenDayWeatherParameters >{
  final BaseWeatherRepository baseWeatherRepository;
  GetSevenDaysWeatherUseCase(this.baseWeatherRepository);

  @override
  Future<Either<Failure, Weather>> call(SevenDayWeatherParameters parameters) async{
    return await baseWeatherRepository.getSevenDaysWeather(parameters);
  }
}

class SevenDayWeatherParameters extends Equatable {
  final String location;

  const SevenDayWeatherParameters({required this.location});

  @override
  List<Object> get props => [location];
}