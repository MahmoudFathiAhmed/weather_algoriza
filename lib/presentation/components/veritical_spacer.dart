import 'package:flutter/material.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';
import 'package:weather_algoriza/core/utils/values_manager.dart';

class VerticalSpacer extends StatelessWidget {
  final double margin;
  const VerticalSpacer({Key? key, required this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      height: AppSize.s55,
      width: AppSize.s0_8,
      color: AppColors.myGrey.withOpacity(AppSize.s0_7),
    );
  }
}
