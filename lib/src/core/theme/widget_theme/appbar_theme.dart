import 'package:flutter/material.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_colors.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_sizes.dart';

class TAppBarTheme {
  TAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.primary,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.textPrimaryDark, size: AppSizes.size_24),
    actionsIconTheme:
        IconThemeData(color: AppColors.textPrimaryDark, size: AppSizes.size_24),
    titleTextStyle: TextStyle(
         fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimaryDark),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.primary,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.textPrimaryDark, size: AppSizes.size_24),
    actionsIconTheme:
        IconThemeData(color: AppColors.textPrimaryDark, size: AppSizes.size_24),
    titleTextStyle: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimaryDark),
  );
}
