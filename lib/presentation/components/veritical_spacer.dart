import 'package:flutter/material.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';

class VerticalSpacer extends StatelessWidget {
  final double margin;
  const VerticalSpacer({Key? key, required this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      height: 55,
      width: 0.8,
      color: AppColors.myGrey.withOpacity(.7),
    );
  }
}
