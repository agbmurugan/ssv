import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_sizes.dart';

void showCustomSnackBar(String? message, {bool isError = true}) {
  if (message != null && message.isNotEmpty) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
      dismissDirection: DismissDirection.horizontal,
      margin: const EdgeInsets.only(
        right: AppSizes.size_12,
        top: AppSizes.size_12,
        bottom: AppSizes.size_12,
        left: AppSizes.size_12,
      ),
      duration: const Duration(seconds: 3),
      backgroundColor: isError ? Colors.red : Colors.green,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.size_04)),
      content: Text(
        message,
      ),
    ));
  }
}
