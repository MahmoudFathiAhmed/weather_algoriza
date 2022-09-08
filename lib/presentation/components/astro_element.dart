import 'package:flutter/material.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';

class AstroElement extends StatelessWidget {
  final String condition;
  final String icon;
  final String time;
  const AstroElement({Key? key, required this.condition, required this.icon, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(condition,style: TextStyle(color: AppColors.white),),
        const SizedBox(height: 8,),
        Image.asset(icon,height: 48, width: 48,),
        const SizedBox(height: 8,),
        Text(time,style: TextStyle(color: AppColors.myGrey),),
      ],
    );
  }
}
