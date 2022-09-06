import 'package:dio/dio.dart';
import 'package:weather_algoriza/core/error/exceptions.dart';
import 'package:weather_algoriza/core/network/api_constants.dart';
import 'package:weather_algoriza/core/network/error_message_model.dart';
import 'package:weather_algoriza/data/model/weather_model.dart';
import 'package:weather_algoriza/domain/entity/weather.dart';

abstract class BaseWeatherRemoteDataSource{
  Future<Weather> getOneDayWeather();
  Future<Weather> getSevenDaysWeather();
}
class WeatherRemoteDataSource extends BaseWeatherRemoteDataSource{
  @override
  Future<Weather> getOneDayWeather() async{
    final response = await Dio().get(ApiConstants.forecastOneDay);
    if (response.statusCode == 200) {
      return WeatherModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<Weather> getSevenDaysWeather() async{
    final response = await Dio().get(ApiConstants.forecastSevenDays);
    if (response.statusCode == 200) {
      return WeatherModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

}