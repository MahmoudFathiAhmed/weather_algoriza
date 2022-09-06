import 'package:equatable/equatable.dart';
import 'package:weather_algoriza/domain/entity/condition.dart';

class Current extends Equatable {
  final String lastUpdated;
  final double tempC;
  final Condition condition;
  final double windKph;
  final double humidity;
  final double feelsLikeC;
  final double uv;

  const Current(
      {required this.lastUpdated,
      required this.tempC,
      required this.condition,
      required this.windKph,
      required this.humidity,
      required this.feelsLikeC,
      required this.uv});

  @override
  List<Object> get props => [
        lastUpdated,
        tempC,
        condition,
        windKph,
        humidity,
        feelsLikeC,
        uv,
      ];
}
