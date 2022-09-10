import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_algoriza/core/utils/app_assets.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';
import 'package:weather_algoriza/core/utils/app_strings.dart';
import 'package:weather_algoriza/core/utils/values_manager.dart';

class WeekWeatherComponent extends StatelessWidget {
  final String day;
  final String icon;
  final double humidity;
  final double maxTempC;
  final double minTempC;

  const WeekWeatherComponent(
      {Key? key,
      required this.day,
      required this.icon,
      required this.humidity,
      required this.maxTempC,
      required this.minTempC})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
      child: Row(
        children: [
          Text(
            day.substring(AppCount.c5, AppCount.c10),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            width: AppSize.s67,
          ),
          CachedNetworkImage(
            imageUrl: '${AppStrings.https}$icon',
            width: AppSize.s38,
            height: AppSize.s38,
          ),
          const SizedBox(
            width: AppSize.s6,
          ),
          SvgPicture.asset(
            AppImages.humidityIc,
            height: AppSize.s22,
            width: AppSize.s22,
          ),
          Text(
            '${humidity.toInt()}${AppStrings.percent}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            width: AppSize.s27,
          ),
          Text(
            '$maxTempC${AppStrings.degreeSign} ${AppStrings.splitter} $minTempC${AppStrings.degreeSign}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
