import 'package:flutter/material.dart';
import 'package:taste_time/config/resources/app_colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightThemeDefault = ThemeData(
    fontFamily: "Roboto",
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
  );
}
