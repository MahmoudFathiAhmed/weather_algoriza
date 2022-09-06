import 'package:equatable/equatable.dart';

class Astro extends Equatable {
  final String sunrise;
  final String sunset;
  final String moonrise;
  final String moonset;

  const Astro({
    required this.sunrise,
    required this.sunset,
    required this.moonrise,
    required this.moonset,
  });

  @override
  List<Object> get props => [
        sunrise,
        sunset,
        moonrise,
        moonset,
      ];
}
