import 'package:flutter/material.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_colors.dart';

class AppTabBarTheme {
  AppTabBarTheme._();

  static const tabbarLightTheme = TabBarTheme(
      labelColor: AppColors.light,
      indicatorColor: AppColors.light,
      unselectedLabelColor: AppColors.primaryBG,
      indicatorSize: TabBarIndicatorSize.tab);

  static const tabbarDarkTheme = TabBarTheme(
      labelColor: AppColors.light,
      indicatorColor: AppColors.light,
      unselectedLabelColor: AppColors.primaryBG,
      indicatorSize: TabBarIndicatorSize.tab);
}
