import 'package:flutter/material.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';
import 'package:weather_algoriza/core/utils/values_manager.dart';

class AstroElement extends StatelessWidget {
  final String condition;
  final String icon;
  final String time;
  const AstroElement({Key? key, required this.condition, required this.icon, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(condition,style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(height: AppSize.s8,),
        Image.asset(icon,height: AppSize.s48, width: AppSize.s48,),
        const SizedBox(height: AppSize.s8,),
        Text(time,style: Theme.of(context).textTheme.bodyLarge,),
      ],
    );
  }
}
