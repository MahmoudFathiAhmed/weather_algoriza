import 'package:weather_algoriza/domain/entity/astro.dart';

class AstroModel extends Astro {
  const AstroModel({required super.sunrise,
    required super.sunset,
    required super.moonrise,
    required super.moonset});

  factory AstroModel.fromJson(Map<String, dynamic>json)=>
      AstroModel(
          sunrise: json['sunrise'],
          sunset: json['sunset'],
          moonrise: json['moonrise'],
          moonset: json['moonset'],
      );
}
