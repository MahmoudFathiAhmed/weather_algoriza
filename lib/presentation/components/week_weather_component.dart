import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_algoriza/core/utils/app_assets.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            day.substring(5, 10),
            style:
                TextStyle(fontWeight: FontWeight.bold, color: AppColors.white),
          ),
          const SizedBox(
            width: 67,
          ),
          CachedNetworkImage(
            imageUrl: 'https:$icon',
            width: 38,
            height: 38,
          ),
          const SizedBox(
            width: 6,
          ),
          SvgPicture.asset(
            AppImages.humidityIc,
            height: 22,
            width: 22,
          ),
          Text(
            '${humidity.toInt()}%',
            style: TextStyle(
              color: AppColors.myGrey,
            ),
          ),
          const SizedBox(
            width: 27,
          ),
          Text(
            '$maxTempC°  /  $minTempC°',
            style: TextStyle(
              color: AppColors.myGrey,
            ),
          ),
        ],
      ),
    );
  }
}
