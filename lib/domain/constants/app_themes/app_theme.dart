import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/domain/constants/app_colors/app_colors.dart';

final appLightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
        secondaryContainer: AppColors.onPrimaryLableColor,
        primary: AppColors.primaryColor,
        surface: AppColors.onPrimaryLableTextColor,
        //  brightness: Brightness.light,
        primaryContainer: AppColors.primaryContainerColor,
        secondary: AppColors.secondaryColor,
        onPrimaryContainer: AppColors.onPrimaryContainerTextColor,
        onPrimary: AppColors.onPrimaryLableColor),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w400,
          fontSize: 14,
          overflow: TextOverflow.ellipsis),
      titleLarge: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w500,
          fontSize: 17,
          overflow: TextOverflow.ellipsis),
      titleSmall: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w300,
          fontSize: 10,
          overflow: TextOverflow.ellipsis),
      bodyLarge: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w500,
          fontSize: 24,
          overflow: TextOverflow.ellipsis),
      bodyMedium: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w400,
          fontSize: 16,
          overflow: TextOverflow.ellipsis),
      bodySmall: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w300,
          fontSize: 9,
          overflow: TextOverflow.ellipsis),
      labelSmall: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w300,
          fontSize: 9,
          overflow: TextOverflow.ellipsis),
      labelMedium: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w400,
          fontSize: 9,
          overflow: TextOverflow.ellipsis),
      labelLarge: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w500,
          fontSize: 21,
          overflow: TextOverflow.ellipsis),
    ));

final appDarkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(
        secondaryContainer: AppColors.onPrimaryLableColor,
        primary: AppColors.primaryDarkColor,
        //  surface: Colors.grey.shade900,
        // surface: AppColors.onPrimaryDarkLableColor,
        //   brightness: Brightness.dark,
        primaryContainer: AppColors.primaryDarkContainerColor,
        secondary: AppColors.secondaryDarkColor,
        onPrimaryContainer: AppColors.onPrimaryDarkContainerTextColor,
        onPrimary: AppColors.onPrimaryDarkLableColor),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w400,
          fontSize: 14,
          overflow: TextOverflow.ellipsis),
      titleLarge: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w500,
          fontSize: 17,
          overflow: TextOverflow.ellipsis),
      titleSmall: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w300,
          fontSize: 10,
          overflow: TextOverflow.ellipsis),
      bodyLarge: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w500,
          fontSize: 24,
          overflow: TextOverflow.ellipsis),
      bodyMedium: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w400,
          fontSize: 16,
          overflow: TextOverflow.ellipsis),
      bodySmall: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w300,
          fontSize: 9,
          overflow: TextOverflow.ellipsis),
      labelSmall: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w300,
          fontSize: 9,
          overflow: TextOverflow.ellipsis),
      labelMedium: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w400,
          fontSize: 9,
          overflow: TextOverflow.ellipsis),
      labelLarge: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w500,
          fontSize: 21,
          overflow: TextOverflow.ellipsis),
    ));
