import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_algoriza/core/services/service_locator.dart';
import 'package:weather_algoriza/core/utils/app_assets.dart';
import 'package:weather_algoriza/core/utils/app_strings.dart';
import 'package:weather_algoriza/core/utils/values_manager.dart';
import 'package:weather_algoriza/presentation/components/astro_element.dart';
import 'package:weather_algoriza/presentation/components/current_weather_component.dart';
import 'package:weather_algoriza/presentation/components/hour_weather_component.dart';
import 'package:weather_algoriza/presentation/components/info_element.dart';
import 'package:weather_algoriza/presentation/components/my_spacer.dart';
import 'package:weather_algoriza/presentation/components/side_menu.dart';
import 'package:weather_algoriza/presentation/components/veritical_spacer.dart';
import 'package:weather_algoriza/presentation/components/week_weather_component.dart';
import 'package:weather_algoriza/presentation/controller/weather_bloc.dart';

class MainScreen extends StatelessWidget {
  final String location;
  const MainScreen({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<WeatherBloc>()
        ..add(GetOneDayWeatherEvent(location))
        ..add(GetSevenDaysWeatherEvent(location)),
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          return Scaffold(
            drawer: const SideMenu(
                headerImage: AppImages.weatherIc,
                radius: AppSize.s15),
            appBar: AppBar(),
            body: SingleChildScrollView(
              padding: const EdgeInsets.only(
                  top: AppPadding.p40, left: AppPadding.p20, right: AppPadding.p20, bottom: AppPadding.p20),
              child: Column(
                children: [
                  CurrentWeatherComponent(
                    location: state.oneDayWeather.location.name.toUpperCase(),
                    tempC: state.oneDayWeather.current.tempC,
                    maxTemp: state
                        .oneDayWeather.forecast.forecastDay[AppCount.c0].day.maxTempC,
                    minTemp: state
                        .oneDayWeather.forecast.forecastDay[AppCount.c0].day.minTempC,
                    icon: state.oneDayWeather.current.condition.icon,
                    weatherCondition: state.oneDayWeather.current.condition.text
                        .toUpperCase(),
                    feelsLike: state.oneDayWeather.current.feelsLikeC,
                    lastUpdated: state.oneDayWeather.current.lastUpdated,
                  ),
                  const MySpacer(),
                  SizedBox(
                    height: AppSize.s122,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => HourWeatherComponent(
                        hour: state.oneDayWeather.forecast.forecastDay[AppCount.c0]
                            .hour[index].time,
                        icon: state.oneDayWeather.forecast.forecastDay[AppCount.c0]
                            .hour[index].condition.icon,
                        tempC: state.oneDayWeather.forecast.forecastDay[AppCount.c0]
                            .hour[index].tempC,
                        humidity: state.oneDayWeather.forecast.forecastDay[AppCount.c0]
                            .hour[index].humidity,
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: AppSize.s20,
                      ),
                      itemCount: state
                          .oneDayWeather.forecast.forecastDay[AppCount.c0].hour.length,
                    ),
                  ),
                  const MySpacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AstroElement(
                        condition: AppStrings.sunrise,
                        icon: AppImages.sunriseIc,
                        time: state.oneDayWeather.forecast.forecastDay[AppCount.c0].astro
                            .sunrise,
                      ),
                      const VerticalSpacer(
                        margin: AppMargin.m12,
                      ),
                      AstroElement(
                        condition: AppStrings.sunset,
                        icon: AppImages.sunsetIc,
                        time: state
                            .oneDayWeather.forecast.forecastDay[AppCount.c0].astro.sunset,
                      ),
                      const VerticalSpacer(
                        margin: AppMargin.m12,
                      ),
                      AstroElement(
                        condition: AppStrings.moonrise,
                        icon: AppImages.moonriseIc,
                        time: state.oneDayWeather.forecast.forecastDay[AppCount.c0].astro
                            .moonrise,
                      ),
                      const VerticalSpacer(
                        margin: AppMargin.m12,
                      ),
                      AstroElement(
                        condition: AppStrings.moonset,
                        icon: AppImages.moonsetIc,
                        time: state.oneDayWeather.forecast.forecastDay[AppCount.c0].astro
                            .moonset,
                      ),
                    ],
                  ),
                  const MySpacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InfoElement(
                        info: AppStrings.uv,
                        icon: AppImages.uvIc,
                        value:
                            '${state.oneDayWeather.forecast.forecastDay[AppCount.c0].day.uv.toInt()}',
                      ),
                      const VerticalSpacer(
                        margin: AppMargin.m16,
                      ),
                      InfoElement(
                        info: AppStrings.wind,
                        icon: AppImages.windIc,
                        value:
                            '${state.oneDayWeather.forecast.forecastDay[AppCount.c0].day.maxWindKph} km/h',
                      ),
                      const VerticalSpacer(
                        margin: AppMargin.m16,
                      ),
                      InfoElement(
                        info: AppStrings.humidity,
                        icon: AppImages.humidityPngIc,
                        value:
                            '${state.oneDayWeather.forecast.forecastDay[AppCount.c0].day.avgHumidity}%',
                      ),
                    ],
                  ),
                  const MySpacer(),
                  SizedBox(
                    height: AppSize.s328,
                    child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        primary: false,
                        itemBuilder: (context, index) => WeekWeatherComponent(
                              day: state.sevenDaysWeather.forecast
                                  .forecastDay[index].date,
                              icon: state.sevenDaysWeather.forecast
                                  .forecastDay[index].day.condition.icon,
                              humidity: state.sevenDaysWeather.forecast
                                  .forecastDay[index].day.avgHumidity,
                              maxTempC: state.sevenDaysWeather.forecast
                                  .forecastDay[index].day.maxTempC,
                              minTempC: state.sevenDaysWeather.forecast
                                  .forecastDay[index].day.minTempC,
                            ),
                        separatorBuilder: (context, index) => const SizedBox(
                              height: AppSize.s10,
                            ),
                        itemCount:
                            state.sevenDaysWeather.forecast.forecastDay.length),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
