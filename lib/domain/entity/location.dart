import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final String name;
  final String region;
  final double lat;
  final double lon;
  final String localtime;

  const Location(
      {required this.name, required this.region, required this.lat, required this.lon, required this.localtime});

  @override
  List<Object> get props => [name, region, lat, lon, localtime];
}