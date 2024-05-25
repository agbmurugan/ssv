import 'package:flutter/material.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_colors.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_sizes.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(AppSizes.size_10)),
      alignment: Alignment.center,
      child: const CircularProgressIndicator(
        color: AppColors.primary,
        strokeWidth: AppSizes.height_6,
      ),
    ));
  }
}
