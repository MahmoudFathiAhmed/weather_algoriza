import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_algoriza/core/usecase/base_use_case.dart';
import 'package:weather_algoriza/core/utils/enums.dart';
import 'package:weather_algoriza/domain/entity/astro.dart';
import 'package:weather_algoriza/domain/entity/condition.dart';
import 'package:weather_algoriza/domain/entity/current.dart';
import 'package:weather_algoriza/domain/entity/day.dart';
import 'package:weather_algoriza/domain/entity/forecast.dart';
import 'package:weather_algoriza/domain/entity/forecast_day.dart';
import 'package:weather_algoriza/domain/entity/hour.dart';
import 'package:weather_algoriza/domain/entity/location.dart';
import 'package:weather_algoriza/domain/entity/weather.dart';
import 'package:weather_algoriza/domain/usecase/get_one_day_Weather.dart';
import 'package:weather_algoriza/domain/usecase/get_seven_day_weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  GetOneDayWeatherUseCase getOneDayWeatherUseCase;
  GetSevenDayWeatherUseCase getSevenDayWeatherUseCase;
  WeatherBloc(this.getOneDayWeatherUseCase,this.getSevenDayWeatherUseCase) : super(const WeatherState()) {
    on<GetOneDayWeatherEvent>(_getOneDayWeather);
    on<GetSevenDayWeatherEvent>(_getSevenDayWeather);
  }

  FutureOr<void> _getOneDayWeather(GetOneDayWeatherEvent event, Emitter<WeatherState> emit) async{
    final result = await getOneDayWeatherUseCase(const NoParameters(),);
    result.fold(
          (l) =>
          emit(state.copyWith(
            oneDayState: RequestState.error,
            oneDayMessage: l.message,
              )),
          (r) =>
          emit(state.copyWith(
              oneDayWeather: r, oneDayState: RequestState.loaded)),
    );
  }

  FutureOr<void> _getSevenDayWeather(GetSevenDayWeatherEvent event, Emitter<WeatherState> emit) async{
    final result = await getSevenDayWeatherUseCase(const NoParameters());
    result.fold(
          (l) =>
          emit(state.copyWith(
            sevenDayState: RequestState.error,
            sevenDayMessage: l.message,
          )),
          (r) =>
          emit(state.copyWith(
              sevenDayWeather: r, sevenDayState: RequestState.loaded)),
    );
  }
}
