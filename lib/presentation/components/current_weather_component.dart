import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:weather_algoriza/core/utils/app_strings.dart';
import 'package:weather_algoriza/core/utils/values_manager.dart';

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
                //DISPLAY SMALL
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(
                  height: AppSize.s10,
                ),
                Text(
                  '$tempC ${AppStrings.degreeCelsiusSign}',
                  //or ALT+0176
                  //DISPLAY LARGE
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  height: AppSize.s10,
                ),
                Text(
                  '${AppStrings.upArrow} $maxTemp${AppStrings.degreeSign}  ${AppStrings.downArrow} $minTemp${AppStrings.degreeSign}',
                  //or ALT+0176
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: AppSize.s10,
                ),
              ],
            ),
            const SizedBox(
              width: AppSize.s10,
            ),
            Column(
              children: [
                CachedNetworkImage(imageUrl: '${AppStrings.https}$icon'),
                const SizedBox(
                  height: AppSize.s10,
                ),
                Text(
                  weatherCondition.toUpperCase(), //or ALT+0176
                  //DISPLAY MEDIUM
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.s10,
        ),
        Text(
          '${AppStrings.feelsLike} $feelsLike ${AppStrings.degreeCelsiusSign}'.toUpperCase(), //or ALT+0176
          //HEADLINE MEDIUM
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: AppSize.s10,
        ),
        Text(
          '${AppStrings.lastUpdated} $lastUpdated'.toUpperCase(), //or ALT+0176
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
