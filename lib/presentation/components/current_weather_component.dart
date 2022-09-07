import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';

class CurrentWeatherComponent extends StatelessWidget {
  final String location;
  final double tempC;
  final double maxTemp;
  final double minTemp;
  final String icon;
  final String weatherCondition;
  final double feelsLike;
  final String lastUpdated;

  const CurrentWeatherComponent({
    Key? key,
    required this.location,
    required this.tempC,
    required this.maxTemp,
    required this.minTemp,
    required this.icon,
    required this.weatherCondition,
    required this.feelsLike,
    required this.lastUpdated,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  location,
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: 4.0,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '$tempC \u2103',
                  //or ALT+0176
                  style: TextStyle(
                    color: AppColors.myGrey,
                    fontWeight: FontWeight.w300,
                    fontSize: 34,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '▲ $maxTemp°  ▼ $minTemp°',
                  //or ALT+0176
                  style: TextStyle(
                    color: AppColors.myGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                CachedNetworkImage(imageUrl: 'https:$icon'),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  weatherCondition.toUpperCase(), //or ALT+0176
                  style: TextStyle(
                    color: AppColors.myGrey,
                    fontWeight: FontWeight.w300,
                    fontSize: 34,
                    letterSpacing: 5.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'feels like $feelsLike \u2103'.toUpperCase(), //or ALT+0176
          style: TextStyle(
            color: AppColors.myGrey,
            fontWeight: FontWeight.w300,
            fontSize: 24,
            letterSpacing: 3.0,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'last updated $lastUpdated'.toUpperCase(), //or ALT+0176
          style: TextStyle(
            color: AppColors.myGrey,
            fontWeight: FontWeight.w500,
            fontSize: 10,
            letterSpacing: 2.0,
          ),
        ),
      ],
    );
  }
}
