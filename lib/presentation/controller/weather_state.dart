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
            text: AppStrings.emptyString,
            icon: AppStrings.defaultIcon
        ),
        feelsLikeC: AppSize.s0,
        humidity: AppSize.s0,
        lastUpdated: AppStrings.emptyString,
        tempC: AppSize.s0,
        uv: AppSize.s0,
        windKph: AppSize.s0,
      ),
      location: Location(
        name: AppStrings.emptyString,
        lat: AppSize.s0,
        localtime: AppStrings.emptyString,
        lon: AppSize.s0,
        region: AppStrings.emptyString,
      ),
      forecast: Forecast(
          forecastDay: [
            ForecastDay(
              date: AppStrings.defaultDate,
              day: Day(
                uv: AppSize.s0,
                condition: Condition(
                    text: AppStrings.emptyString,
                    icon: AppStrings.defaultIcon
                ),
                avgHumidity: AppSize.s0,
                avgTempC: AppSize.s0,
                maxTempC: AppSize.s0,
                maxWindKph: AppSize.s0,
                minTempC: AppSize.s0,
              ),
              astro: Astro(
                moonrise: AppStrings.emptyString,
                moonset: AppStrings.emptyString,
                sunrise: AppStrings.emptyString,
                sunset: AppStrings.emptyString,
              ),
              hour: [
                Hour(
                    condition: Condition(
                        text: AppStrings.emptyString,
                        icon: AppStrings.defaultIcon
                    ),
                    uv: AppSize.s0,
                    windKph: AppSize.s0,
                    tempC: AppSize.s0,
                    humidity: AppSize.s0,
                    feelslikeC: AppSize.s0,
                    time: AppStrings.defaultTime
                ),
              ],),
          ]
      ),),
    this.oneDayState = RequestState.loading,
    this.oneDayMessage = AppStrings.emptyString,
    this.sevenDaysWeather = const Weather(
      current: Current(
        condition: Condition(
            text: AppStrings.emptyString,
            icon: AppStrings.defaultIcon
        ),
        feelsLikeC: AppSize.s0,
        humidity: AppSize.s0,
        lastUpdated: AppStrings.emptyString,
        tempC: AppSize.s0,
        uv: AppSize.s0,
        windKph: AppSize.s0,
      ),
      location: Location(
        name: AppStrings.emptyString,
        lat: AppSize.s0,
        localtime: AppStrings.emptyString,
        lon: AppSize.s0,
        region: AppStrings.emptyString,
      ),
      forecast: Forecast(
          forecastDay: [
            ForecastDay(
              date: AppStrings.defaultDate,
              day: Day(
                uv: AppSize.s0,
                condition: Condition(
                    text: AppStrings.emptyString,
                    icon: AppStrings.defaultIcon
                ),
                avgHumidity: AppSize.s0,
                avgTempC: AppSize.s0,
                maxTempC: AppSize.s0,
                maxWindKph: AppSize.s0,
                minTempC: AppSize.s0,
              ),
              astro: Astro(
                moonrise: AppStrings.emptyString,
                moonset: AppStrings.emptyString,
                sunrise: AppStrings.emptyString,
                sunset: AppStrings.emptyString,
              ),
              hour: [
                Hour(
                    condition: Condition(
                        text: AppStrings.emptyString,
                        icon: AppStrings.defaultIcon
                    ),
                    uv: AppSize.s0,
                    windKph: AppSize.s0,
                    tempC: AppSize.s0,
                    humidity: AppSize.s0,
                    feelslikeC: AppSize.s0,
                    time: AppStrings.defaultTime
                ),
              ],),
          ]
      ),),
    this.sevenDaysState = RequestState.loading,
    this.sevenDaysMessage = AppStrings.emptyString,
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
