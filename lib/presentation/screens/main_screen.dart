import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_algoriza/core/services/service_locator.dart';
import 'package:weather_algoriza/core/utils/app_assets.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';
import 'package:weather_algoriza/presentation/components/current_weather_component.dart';
import 'package:weather_algoriza/presentation/components/hour_weather_component.dart';
import 'package:weather_algoriza/presentation/components/my_spacer.dart';
import 'package:weather_algoriza/presentation/controller/weather_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<WeatherBloc>()..add(GetOneDayWeatherEvent()),
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
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          state.sevenDayWeather.forecast.forecastDay[0].date,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.white),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        CachedNetworkImage(
                          imageUrl:
                              'https:${state.sevenDayWeather.forecast.forecastDay[0].day.condition.icon}',
                          width: 46,
                          height: 46,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          AppImages.humidityIc,
                          height: 22,
                          width: 22,
                        ),
                        Text(
                          '${state.sevenDayWeather.forecast.forecastDay[0].day.avgHumidity.toInt()}%',
                          style: TextStyle(
                            color: AppColors.myGrey,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Text(
                          '${state.sevenDayWeather.forecast.forecastDay[0].day.maxTempC} / ${state.sevenDayWeather.forecast.forecastDay[0].day.minTempC}',
                          style: TextStyle(
                            color: AppColors.myGrey,
                          ),
                        ),
                      ],
                    ),
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
