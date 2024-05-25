import 'package:flutter/material.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_colors.dart';
import 'package:sreeselvavinayagartemple/src/core/theme/widget_theme/appbar_theme.dart';
import 'package:sreeselvavinayagartemple/src/core/theme/widget_theme/bottom_nav_bar_theme.dart';
import 'package:sreeselvavinayagartemple/src/core/theme/widget_theme/elevated_button_theme.dart';
import 'package:sreeselvavinayagartemple/src/core/theme/widget_theme/tabbar_theme.dart';
import 'package:sreeselvavinayagartemple/src/core/theme/widget_theme/text_field_theme.dart';
import 'package:sreeselvavinayagartemple/src/core/theme/widget_theme/text_theme.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.primaryBG,
    textTheme: AppTextTheme.lightTextTheme,
    bottomNavigationBarTheme:
        AppBottomNavBarTheme.lightBottomNavigationBarTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    tabBarTheme: AppTabBarTheme.tabbarLightTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.dark,
    textTheme: AppTextTheme.darkTextTheme,
    bottomNavigationBarTheme: AppBottomNavBarTheme.darkBottomNavigationBarTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    tabBarTheme: AppTabBarTheme.tabbarDarkTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
  );
}
