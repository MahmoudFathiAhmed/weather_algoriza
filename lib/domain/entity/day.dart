import 'package:equatable/equatable.dart';
import 'package:weather_algoriza/domain/entity/condition.dart';

class Day extends Equatable {
  final double maxTempC;
  final double minTempC;
  final double avgTempC;
  final double maxWindKph;
  final double avgHumidity;
  final Condition condition;
  final double uv;

  const Day({
    required this.maxTempC,
    required this.minTempC,
    required this.avgTempC,
    required this.maxWindKph,
    required this.avgHumidity,
    required this.condition,
    required this.uv,
  });

  @override
  List<Object> get props => [
        maxTempC,
        minTempC,
        avgTempC,
        maxWindKph,
        avgHumidity,
        condition,
        uv,
      ];
}
