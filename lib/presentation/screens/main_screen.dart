import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:weather_algoriza/core/services/service_locator.dart';
import 'package:weather_algoriza/core/utils/app_assets.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';
import 'package:weather_algoriza/presentation/components/astro_element.dart';
import 'package:weather_algoriza/presentation/components/current_weather_component.dart';
import 'package:weather_algoriza/presentation/components/hour_weather_component.dart';
import 'package:weather_algoriza/presentation/components/info_element.dart';
import 'package:weather_algoriza/presentation/components/my_spacer.dart';
import 'package:weather_algoriza/presentation/components/veritical_spacer.dart';
import 'package:weather_algoriza/presentation/components/week_weather_component.dart';
import 'package:weather_algoriza/presentation/controller/weather_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<WeatherBloc>()
        ..add(GetOneDayWeatherEvent())
        ..add(GetSevenDaysWeatherEvent()),
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.black,
            appBar: AppBar(
              backgroundColor: AppColors.black,
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: AppColors.myGrey,
                ),
                onPressed: () {},
              ),
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.only(
                  top: 40.0, left: 20, right: 20, bottom: 20),
              child: Column(
                children: [
                  CurrentWeatherComponent(
                    location: state.oneDayWeather.location.name.toUpperCase(),
                    tempC: state.oneDayWeather.current.tempC,
                    maxTemp: state
                        .oneDayWeather.forecast.forecastDay[0].day.maxTempC,
                    minTemp: state
                        .oneDayWeather.forecast.forecastDay[0].day.minTempC,
                    icon: state.oneDayWeather.current.condition.icon,
                    weatherCondition: state.oneDayWeather.current.condition.text
                        .toUpperCase(),
                    feelsLike: state.oneDayWeather.current.feelsLikeC,
                    lastUpdated: state.oneDayWeather.current.lastUpdated,
                  ),
                  const MySpacer(),
                  SizedBox(
                    height: 122,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => HourWeatherComponent(
                        hour: state.oneDayWeather.forecast.forecastDay[0]
                            .hour[index].time,
                        icon: state.oneDayWeather.forecast.forecastDay[0]
                            .hour[index].condition.icon,
                        tempC: state.oneDayWeather.forecast.forecastDay[0]
                            .hour[index].tempC,
                        humidity: state.oneDayWeather.forecast.forecastDay[0]
                            .hour[index].humidity,
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 20,
                      ),
                      itemCount: state
                          .oneDayWeather.forecast.forecastDay[0].hour.length,
                    ),
                  ),
                  const MySpacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AstroElement(
                        condition: 'sunrise',
                        icon: AppImages.sunriseIc,
                        time: state.oneDayWeather.forecast.forecastDay[0].astro
                            .sunrise,
                      ),
                      const VerticalSpacer(margin: 12,),
                      AstroElement(
                        condition: 'sunset',
                        icon: AppImages.sunsetIc,
                        time: state
                            .oneDayWeather.forecast.forecastDay[0].astro.sunset,
                      ),
                      const VerticalSpacer(margin: 12,),
                      AstroElement(
                        condition: 'moonrise',
                        icon: AppImages.moonriseIc,
                        time: state.oneDayWeather.forecast.forecastDay[0].astro
                            .moonrise,
                      ),
                      const VerticalSpacer(margin: 12,),
                      AstroElement(
                        condition: 'moonset',
                        icon: AppImages.moonsetIc,
                        time: state.oneDayWeather.forecast.forecastDay[0].astro
                            .moonset,
                      ),
                    ],
                  ),
                  const MySpacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InfoElement(
                        info: 'uv',
                        icon: AppImages.uvIc,
                        value: '${state.oneDayWeather.forecast.forecastDay[0].day.uv.toInt()}',
                      ),
                      const VerticalSpacer(margin: 16,),
                      InfoElement(
                        info: 'wind',
                        icon: AppImages.windIc,
                        value: '${state.oneDayWeather.forecast.forecastDay[0].day.maxWindKph} km/h',
                      ),
                      const VerticalSpacer(margin: 16,),
                      InfoElement(
                        info: 'humidity',
                        icon: AppImages.humidityPngIc,
                        value: '${state.oneDayWeather.forecast.forecastDay[0].day.avgHumidity}%',
                      ),
                    ],
                  ),
                  const MySpacer(),
                  SizedBox(
                    height: 328,
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
                              height: 10,
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
