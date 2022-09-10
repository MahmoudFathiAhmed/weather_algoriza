import 'package:dio/dio.dart';
import 'package:weather_algoriza/core/error/exceptions.dart';
import 'package:weather_algoriza/core/network/api_constants.dart';
import 'package:weather_algoriza/core/network/error_message_model.dart';
import 'package:weather_algoriza/core/utils/values_manager.dart';
import 'package:weather_algoriza/data/model/weather_model.dart';
import 'package:weather_algoriza/domain/usecase/get_one_day_Weather.dart';
import 'package:weather_algoriza/domain/usecase/get_seven_day_weather.dart';

abstract class BaseWeatherRemoteDataSource{
  Future<WeatherModel> getOneDayWeather(OneDayWeatherParameters parameters);
  Future<WeatherModel> getSevenDaysWeather(SevenDayWeatherParameters parameters);
}
class WeatherRemoteDataSource extends BaseWeatherRemoteDataSource{
  @override
  Future<WeatherModel> getOneDayWeather(OneDayWeatherParameters parameters) async{
    final response = await Dio().get(ApiConstants.forecastOneDay(parameters.location));
    if (response.statusCode == AppCount.c200) {
      return WeatherModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<WeatherModel> getSevenDaysWeather(SevenDayWeatherParameters parameters) async{
    final response = await Dio().get(ApiConstants.forecastSevenDays(parameters.location));
    if (response.statusCode == AppCount.c200) {
      return WeatherModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

}