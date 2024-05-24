import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // App theme colors
  static const Color primary = Color.fromARGB(255, 255, 0, 0);
  static const Color secondary = Color(0xFF4A0087);
  static const Color primaryBG = Color(0xFFFFEFC4);
  static const Color primaryBGDark = Color(0xFFFFEFC4);

  // Background colors
  static const Color light = Color(0xFFFFFBFF);
  static const Color dark = Color(0xFF49454E);
  static Color lightSecondary = light.withOpacity(0.9);
  static Color darkSecondary = dark.withOpacity(0.9);
  static const Color buttonDisabled = Color(0xFFC4C4C4);


  // Text colors
  static const Color textPrimary = Color(0xFF120101);
  static const Color textSecondary = Color(0xFF191D23);
  static const Color textPrimaryDark = Color(0xFFFEFEFE);
  static const Color textSecondaryDark = Color(0xFFFEFEFE);
  static const Color textWhite = Color(0xFFFEFEFE);
  static const Color textGrey = Colors.grey;

  static const Color white = Colors.white;
  static const Color black = Colors.black;

   // Error and validation colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color transparent = Colors.transparent;
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color green = Colors.green;
  static const Color blue = Colors.blue;
  static const Color blueShade = Color.fromRGBO(100, 181, 246, 1);
  static const Color red = Colors.red;
}
