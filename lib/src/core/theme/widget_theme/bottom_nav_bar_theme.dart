import 'package:flutter/material.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_colors.dart';

class AppBottomNavBarTheme {
  AppBottomNavBarTheme._();

  static BottomNavigationBarThemeData lightBottomNavigationBarTheme =
      const BottomNavigationBarThemeData(
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    backgroundColor: AppColors.primary,
    selectedItemColor: AppColors.secondary,
    unselectedItemColor: AppColors.light,
  );

  static BottomNavigationBarThemeData darkBottomNavigationBarTheme =
      const BottomNavigationBarThemeData(
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    backgroundColor: AppColors.primary,
    selectedItemColor: AppColors.secondary,
    unselectedItemColor: AppColors.dark,
  );
}
