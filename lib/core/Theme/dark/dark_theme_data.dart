import 'package:flutter/material.dart';
import 'package:weather_algoriza/core/utils/app_colors.dart';
import 'package:weather_algoriza/core/utils/values_manager.dart';

ThemeData getDarkThemeData() => ThemeData(
  scaffoldBackgroundColor: AppColors.black,
      backgroundColor: AppColors.black,
      drawerTheme: DrawerThemeData(
        backgroundColor: AppColors.black.withOpacity(AppSize.s0_8),
        width: AppSize.s304,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s15),
        ),
      ),
      listTileTheme: ListTileThemeData(
        iconColor: AppColors.offWhite,
        style: ListTileStyle.drawer,
        horizontalTitleGap: AppSize.s0,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.black,
        iconTheme: IconThemeData(color: AppColors.offWhite),
        elevation: AppSize.s0,
      ),
      iconTheme: IconThemeData(color: AppColors.offWhite, size: AppSize.s24),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          color: AppColors.myGrey,
          fontWeight: FontWeight.w300,
          fontSize: AppSize.s34,
        ), //DEGREE
        displayMedium: TextStyle(
          color: AppColors.myGrey,
          fontWeight: FontWeight.w300,
          fontSize: AppSize.s24,
          letterSpacing: AppSize.s2,
        ), //CONDITION
        displaySmall: TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          fontSize: AppSize.s30,
          letterSpacing: AppSize.s4,
        ), //CURRENT DEGREE
        headlineMedium: TextStyle(
          color: AppColors.myGrey,
          fontWeight: FontWeight.w300,
          fontSize: AppSize.s24,
          letterSpacing: AppSize.s3,
        ), // FEELS LIKE
        headlineSmall: TextStyle(
          color: AppColors.offWhite,
          fontSize: AppSize.s20,
        ),//LOCATION DRAWER
        titleLarge: TextStyle(
          color: AppColors.myGrey,
          fontWeight: FontWeight.w500,
          fontSize: AppSize.s18,
        ),//MAX & MIN & DEGREE DRAWER
        titleMedium: TextStyle(
        color: AppColors.offWhite,
        fontSize: AppSize.s18,
        fontWeight: FontWeight.w400,),//DEFAULT BUTTON TEXT(DRAWER)
        titleSmall: TextStyle(color: AppColors.white,),//DRAWER TITLE AND OTHERS,
        bodyLarge: TextStyle(color: AppColors.myGrey),//everything
        bodyMedium: TextStyle(fontWeight: FontWeight.bold, color: AppColors.white),//DAY IN WEEK
        bodySmall: TextStyle(
          color: AppColors.myGrey,
          fontWeight: FontWeight.w500,
          fontSize: AppSize.s10,
          letterSpacing: AppSize.s2,
        ),
      ),
    );
