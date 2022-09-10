import 'package:flutter/material.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';
import 'package:weather_algoriza/core/utils/values_manager.dart';

//NOTE: default width ==> double.infinity
class DefaultButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  // final Color textColor;
  // final double fontSize;
  // final FontWeight fontWeight;
  final double width;
  final double height;
  final VoidCallback onclick;
  final double borderRadius;

  const DefaultButton(
      {Key? key,
        required this.backgroundColor,
        required this.text,
        // required this.textColor,
        this.width = double.infinity,
        required this.onclick,
        required this.borderRadius,
        // this.fontSize = AppSize.s18,
        // required this.fontWeight,
        required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor),
      child: MaterialButton(
        onPressed: onclick,
        child: Text(
          text,
          maxLines: AppCount.c1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: AppColors.offWhite,
            fontSize: AppSize.s18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}