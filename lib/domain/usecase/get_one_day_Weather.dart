import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_algoriza/core/error/failure.dart';
import 'package:weather_algoriza/core/usecase/base_use_case.dart';
import 'package:weather_algoriza/domain/entity/weather.dart';
import 'package:weather_algoriza/domain/repository/base_weather_repository.dart';

class GetOneDayWeatherUseCase extends BaseUseCase<Weather, OneDayWeatherParameters> {
  final BaseWeatherRepository baseWeatherRepository;

  GetOneDayWeatherUseCase(this.baseWeatherRepository);

  @override
  Future<Either<Failure, Weather>> call(OneDayWeatherParameters parameters) async {
    return await baseWeatherRepository.getOneDayWeather(parameters);
  }
}

class OneDayWeatherParameters extends Equatable {
  final String location;

  const OneDayWeatherParameters({required this.location});

  @override
  List<Object> get props => [location];
}