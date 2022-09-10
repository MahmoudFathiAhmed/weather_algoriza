import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_algoriza/core/utils/app_assets.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';
import 'package:weather_algoriza/core/utils/app_strings.dart';
import 'package:weather_algoriza/core/utils/values_manager.dart';

class HourWeatherComponent extends StatelessWidget {
  final String hour;
  final String icon;
  final double tempC;
  final double humidity;
  const HourWeatherComponent({Key? key, required this.hour, required this.icon, required this.tempC, required this.humidity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          hour.substring(AppCount.c10, AppCount.c16),
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: AppSize.s14,
        ),
        CachedNetworkImage(
          imageUrl:
          '${AppStrings.https}$icon',
          width: AppSize.s46,
          height: AppSize.s46,
        ),
        const SizedBox(
          height: AppSize.s5,
        ),
        Text(
          '$tempC${AppStrings.degreeSign}',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppImages.humidityIc,
              height: AppSize.s22,
              width: AppSize.s22,
            ),
            Text(
              '${humidity.toInt()}${AppStrings.percent}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ],
    );
  }
}
