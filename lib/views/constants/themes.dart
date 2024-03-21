import 'package:flutter/material.dart';
import 'package:clinic_app/views/constants/colors.dart' as app;

class Themes {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: app.CmsColors.offWhite,
    colorScheme: ColorScheme.light(
      primary: app.CmsColors.black,
      secondary: app.CmsColors.mainOrange,
      error: app.CmsColors.error,
      background: app.CmsColors.offWhite,
      brightness: Brightness.light
    ),
    fontFamily: 'Noto Sans Arabic',
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: app.CmsColors.deepBlue,
    colorScheme: ColorScheme.light(
      primary: app.CmsColors.white,
      secondary: app.CmsColors.mainOrange,
      error: app.CmsColors.error,
      background: app.CmsColors.deepBlue,
      brightness: Brightness.dark
    ),
  );
}