import 'package:flutter/material.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';
import 'package:weather_algoriza/core/utils/values_manager.dart';

ThemeData getLightThemeData() => ThemeData(
  scaffoldBackgroundColor: AppColors.white,
      backgroundColor: AppColors.white,
      drawerTheme: DrawerThemeData(
        backgroundColor: AppColors.offWhite.withOpacity(AppSize.s0_8),
        width: AppSize.s304,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s15)),
      ),
  listTileTheme: ListTileThemeData(
    iconColor: AppColors.myDarkBlue,
    style: ListTileStyle.drawer,
    horizontalTitleGap: AppSize.s0,
  ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.white,
        iconTheme: IconThemeData(color: AppColors.myDarkBlue),
        elevation: AppSize.s0,
      ),
      iconTheme: IconThemeData(color: AppColors.myDarkGrey, size: AppSize.s24),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: AppColors.myDarkGrey,
      fontWeight: FontWeight.w300,
      fontSize: AppSize.s34,
    ), //DEGREE
    displayMedium: TextStyle(
      color: AppColors.myDarkGrey,
      fontWeight: FontWeight.w300,
      fontSize: AppSize.s24,
      letterSpacing: AppSize.s2,
    ), //CONDITION
    displaySmall: TextStyle(
      color: AppColors.myDarkBlue,
      fontWeight: FontWeight.bold,
      fontSize: AppSize.s30,
      letterSpacing: AppSize.s4,
    ), //CURRENT DEGREE
    headlineMedium: TextStyle(
      color: AppColors.myDarkGrey,
      fontWeight: FontWeight.w300,
      fontSize: AppSize.s24,
      letterSpacing: AppSize.s3,
    ), // FEELS LIKE
    headlineSmall: TextStyle(
      color: AppColors.myDarkGrey,
      fontSize: AppSize.s20,
    ),//LOCATION DRAWER
    titleLarge: TextStyle(
      color: AppColors.myDarkGrey,
      fontWeight: FontWeight.w500,
      fontSize: AppSize.s18,
    ),//MAX & MIN & DEGREE DRAWER
    titleMedium: TextStyle(
      color: AppColors.offWhite,
      fontSize: AppSize.s18,
      fontWeight: FontWeight.w400,),//DEFAULT BUTTON TEXT(DRAWER)
    titleSmall: TextStyle(color: AppColors.myDarkBlue,),//DRAWER TITLE AND OTHERS,
    bodyLarge: TextStyle(color: AppColors.myDarkGrey),//everything
    bodyMedium: TextStyle(fontWeight: FontWeight.bold, color: AppColors.myDarkBlue),//DAY IN WEEK
    bodySmall: TextStyle(
      color: AppColors.myDarkGrey,
      fontWeight: FontWeight.w500,
      fontSize: AppSize.s10,
      letterSpacing: AppSize.s2,
    ),
  ),
    );
