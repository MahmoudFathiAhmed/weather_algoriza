import 'package:equatable/equatable.dart';
import 'package:weather_algoriza/domain/entity/condition.dart';

class Hour extends Equatable {
  final String time;
  final double tempC;
  final Condition condition;
  final double windKph;
  final double humidity;
  final double feelslikeC;
  final double uv;

  const Hour({
    required this.time,
    required this.tempC,
    required this.condition,
    required this.windKph,
    required this.humidity,
    required this.feelslikeC,
    required this.uv,
  });

  @override
  List<Object> get props => [
        time,
        tempC,
        condition,
        windKph,
        humidity,
        feelslikeC,
        uv,
      ];
}
