import 'package:weather_algoriza/data/model/forecast_day_model.dart';
import 'package:weather_algoriza/domain/entity/forecast.dart';

class ForecastModel extends Forecast {
  const ForecastModel({required super.forecastDay});

  factory ForecastModel.fromJson(Map<String, dynamic> json) => ForecastModel(
        forecastDay: List<ForecastDayModel>.from(json['forecastday'].map((e)=>ForecastDayModel.fromJson(e))),
      );
}
