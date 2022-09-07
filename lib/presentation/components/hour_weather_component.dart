import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_algoriza/core/utils/app_assets.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';

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
          hour.substring(10, 16),
          style: TextStyle(
            color: AppColors.myGrey,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        CachedNetworkImage(
          imageUrl:
          'https:$icon',
          width: 46,
          height: 46,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '$tempC°',
          style: TextStyle(
            color: AppColors.myGrey,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
          ],
        ),
      ],
    );
  }
}
