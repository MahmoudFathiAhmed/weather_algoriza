part of 'weather_bloc.dart';

class WeatherState extends Equatable {
  final Weather oneDayWeather;
  final RequestState oneDayState;
  final String oneDayMessage;
  final Weather sevenDayWeather;
  final RequestState sevenDayState;
  final String sevenDayMessage;

  WeatherState copyWith({
    Weather? oneDayWeather,
    RequestState? oneDayState,
    String? oneDayMessage,
    Weather? sevenDayWeather,
    RequestState? sevenDayState,
    String? sevenDayMessage,
  }) {
    return WeatherState(
      oneDayWeather: oneDayWeather ?? this.oneDayWeather,
      oneDayState: oneDayState ?? this.oneDayState,
      oneDayMessage: oneDayMessage ?? this.oneDayMessage,
      sevenDayWeather: sevenDayWeather ?? this.sevenDayWeather,
      sevenDayState: sevenDayState ?? this.sevenDayState,
      sevenDayMessage: sevenDayMessage ?? this.sevenDayMessage,
    );
  }

  const WeatherState({
    this.oneDayWeather = const Weather(
      current: Current(
        condition: Condition(
            text: '',
            icon: ''
        ),
        feelsLikeC: 0.0,
        humidity: 0.0,
        lastUpdated: '',
        tempC: 0.0,
        uv: 0.0,
        windKph: 0.0,
      ),
      location: Location(
        name: '',
        lat: 0.0,
        localtime: '',
        lon: 0.0,
        region: '',
      ),
      forecast: Forecast(
          forecastDay: [
            ForecastDay(
              day: Day(
                uv: 0.0,
                condition: Condition(
                    text: '',
                    icon: ''
                ),
                avgHumidity: 0.0,
                avgTempC: 0.0,
                maxTempC: 0.0,
                maxWindKph: 0.0,
                minTempC: 0.0,
              ),
              astro: Astro(
                moonrise: '',
                moonset: '',
                sunrise: '',
                sunset: '',
              ),
              hour: [
                Hour(
                    condition: Condition(
                        text: '',
                        icon: ''
                    ),
                    uv: 0.0,
                    windKph: 0.0,
                    tempC: 0.0,
                    humidity: 0.0,
                    feelslikeC: 0.0,
                    time: ''
                ),
              ],),
          ]
      ),),
    this.oneDayState = RequestState.loading,
    this.oneDayMessage = '',
    this.sevenDayWeather = const Weather(
      current: Current(
        condition: Condition(
            text: '',
            icon: ''
        ),
        feelsLikeC: 0.0,
        humidity: 0.0,
        lastUpdated: '',
        tempC: 0.0,
        uv: 0.0,
        windKph: 0.0,
      ),
      location: Location(
        name: '',
        lat: 0.0,
        localtime: '',
        lon: 0.0,
        region: '',
      ),
      forecast: Forecast(
          forecastDay: [
            ForecastDay(
              day: Day(
                uv: 0.0,
                condition: Condition(
                    text: '',
                    icon: ''
                ),
                avgHumidity: 0.0,
                avgTempC: 0.0,
                maxTempC: 0.0,
                maxWindKph: 0.0,
                minTempC: 0.0,
              ),
              astro: Astro(
                moonrise: '',
                moonset: '',
                sunrise: '',
                sunset: '',
              ),
              hour: [
                Hour(
                    condition: Condition(
                        text: '',
                        icon: ''
                    ),
                    uv: 0.0,
                    windKph: 0.0,
                    tempC: 0.0,
                    humidity: 0.0,
                    feelslikeC: 0.0,
                    time: ''
                ),
              ],),
          ]
      ),),
    this.sevenDayState = RequestState.loading,
    this.sevenDayMessage = '',
  });

  @override
  List<Object> get props =>
      [
        oneDayWeather,
        oneDayState,
        oneDayMessage,
        sevenDayWeather,
        sevenDayState,
        sevenDayMessage,
      ];

}

// class WeatherInitial extends WeatherState {
//   @override
//   List<Object> get props => [];
// }
