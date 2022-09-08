import 'package:flutter/material.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';

class MySpacer extends StatelessWidget {
  const MySpacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 22),
      color: AppColors.myGrey.withOpacity(0.4),
      height: .5,
    );
  }
}
