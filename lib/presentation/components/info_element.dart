import 'package:flutter/material.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';

class InfoElement extends StatelessWidget {
  final String icon;
  final String info;
  final String value;
  const InfoElement({Key? key, required this.info, required this.icon, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(icon,height: 48, width: 48,),
        const SizedBox(height: 8,),
        Text(info.toUpperCase(),style: TextStyle(color: AppColors.white),),
        const SizedBox(height: 8,),
        Text(value,style: TextStyle(color: AppColors.myGrey),),
      ],
    );
  }
}
