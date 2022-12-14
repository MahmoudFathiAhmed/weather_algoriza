import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_algoriza/core/utils/app_strings.dart';
import 'package:weather_algoriza/core/utils/enums.dart';
import 'package:weather_algoriza/core/utils/values_manager.dart';
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
  GetSevenDaysWeatherUseCase getSevenDaysWeatherUseCase;
  WeatherBloc(this.getOneDayWeatherUseCase,this.getSevenDaysWeatherUseCase) : super(const WeatherState()) {
    on<GetOneDayWeatherEvent>(_getOneDayWeather);
    on<GetSevenDaysWeatherEvent>(_getSevenDaysWeather);
  }

  FutureOr<void> _getOneDayWeather(GetOneDayWeatherEvent event, Emitter<WeatherState> emit) async{
    final result = await getOneDayWeatherUseCase(OneDayWeatherParameters(location: event.location),);
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

  FutureOr<void> _getSevenDaysWeather(GetSevenDaysWeatherEvent event, Emitter<WeatherState> emit) async{
    final result = await getSevenDaysWeatherUseCase(SevenDayWeatherParameters(location: event.location));
    result.fold(
          (l) =>
          emit(state.copyWith(
            sevenDaysState: RequestState.error,
            sevenDaysMessage: l.message,
          )),
          (r) =>
          emit(state.copyWith(
              sevenDaysWeather: r, sevenDaysState: RequestState.loaded)),
    );
  }
}
