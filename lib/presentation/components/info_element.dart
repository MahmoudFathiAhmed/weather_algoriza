import 'package:flutter/material.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';
import 'package:weather_algoriza/core/utils/values_manager.dart';

class InfoElement extends StatelessWidget {
  final String icon;
  final String info;
  final String value;
  const InfoElement({Key? key, required this.info, required this.icon, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(icon,height: AppSize.s48, width: AppSize.s48,),
        const SizedBox(height: AppSize.s8,),
        Text(info.toUpperCase(),style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(height: AppSize.s8,),
        Text(value,style: Theme.of(context).textTheme.bodyLarge,),
      ],
    );
  }
}
