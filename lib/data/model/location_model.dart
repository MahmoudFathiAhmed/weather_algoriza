import 'package:weather_algoriza/domain/entity/location.dart';

class LocationModel extends Location {
  const LocationModel(
      {required super.name,
        required super.region,
        required super.lat,
        required super.lon,
        required super.localtime});

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
      name: json['name'],
      region: json['region'],
      lat: json['lat'],
      lon: json['lon'],
      localtime: json['localtime']);
}
