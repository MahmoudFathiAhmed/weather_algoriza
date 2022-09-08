part of 'weather_bloc.dart';

class WeatherState extends Equatable {
  final Weather oneDayWeather;
  final RequestState oneDayState;
  final String oneDayMessage;
  final Weather sevenDaysWeather;
  final RequestState sevenDaysState;
  final String sevenDaysMessage;

  WeatherState copyWith({
    Weather? oneDayWeather,
    RequestState? oneDayState,
    String? oneDayMessage,
    Weather? sevenDaysWeather,
    RequestState? sevenDaysState,
    String? sevenDaysMessage,
  }) {
    return WeatherState(
      oneDayWeather: oneDayWeather ?? this.oneDayWeather,
      oneDayState: oneDayState ?? this.oneDayState,
      oneDayMessage: oneDayMessage ?? this.oneDayMessage,
      sevenDaysWeather: sevenDaysWeather ?? this.sevenDaysWeather,
      sevenDaysState: sevenDaysState ?? this.sevenDaysState,
      sevenDaysMessage: sevenDaysMessage ?? this.sevenDaysMessage,
    );
  }

  const WeatherState({
    this.oneDayWeather = const Weather(
      current: Current(
        condition: Condition(
            text: '',
            icon: '//cdn.weatherapi.com/weather/64x64/day/113.png'
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
              date: '2022-09-07',
              day: Day(
                uv: 0.0,
                condition: Condition(
                    text: '',
                    icon: '//cdn.weatherapi.com/weather/64x64/day/113.png'
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
                        icon: '//cdn.weatherapi.com/weather/64x64/day/113.png'
                    ),
                    uv: 0.0,
                    windKph: 0.0,
                    tempC: 0.0,
                    humidity: 0.0,
                    feelslikeC: 0.0,
                    time: '2022-09-07 05:00'
                ),
              ],),
          ]
      ),),
    this.oneDayState = RequestState.loading,
    this.oneDayMessage = '',
    this.sevenDaysWeather = const Weather(
      current: Current(
        condition: Condition(
            text: '',
            icon: '//cdn.weatherapi.com/weather/64x64/day/113.png'
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
              date: '2022-09-07',
              day: Day(
                uv: 0.0,
                condition: Condition(
                    text: '',
                    icon: '//cdn.weatherapi.com/weather/64x64/day/113.png'
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
                        icon: '//cdn.weatherapi.com/weather/64x64/day/113.png'
                    ),
                    uv: 0.0,
                    windKph: 0.0,
                    tempC: 0.0,
                    humidity: 0.0,
                    feelslikeC: 0.0,
                    time: '2022-09-07 05:00'
                ),
              ],),
          ]
      ),),
    this.sevenDaysState = RequestState.loading,
    this.sevenDaysMessage = '',
  });
  @override
  List<Object> get props =>
      [
        oneDayWeather,
        oneDayState,
        oneDayMessage,
        sevenDaysWeather,
        sevenDaysState,
        sevenDaysMessage,
      ];

}

// class WeatherInitial extends WeatherState {
//   @override
//   List<Object> get props => [];
// }
