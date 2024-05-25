import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_colors.dart';
import 'package:sreeselvavinayagartemple/src/mvc/view/common/common_error_widget.dart';
import 'package:sreeselvavinayagartemple/src/mvc/view/common/custom_loader.dart';

class AppDialogs {
  AppDialogs._privateConstructor();

  static final AppDialogs getInstance = AppDialogs._privateConstructor();

  bool isDialogShowing = false;
  factory AppDialogs() {
    return getInstance;
  }

  showLoader(
    BuildContext context, {
    bool barrierDismissible = false,
  }) {
    isDialogShowing = true;
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return const CustomLoader();
      },
    );
  }

  dismissLoader(BuildContext context) {
    if (isDialogShowing) {
      isDialogShowing = false;
      Get.back();
    }
  }

  showAlert(BuildContext context,
      {bool barrierDismissible = false, String? error}) {
    isDialogShowing = true;
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return CommonErrorWidget(
          error: error ?? "",
        );
      },
    );
  }

  static openBottomSheet(
      {required Widget widget,
      bool dismissable = true,
      required VoidCallback onCloseSheet,
      bool isScrollControlled = true,
      Color? backgroundColor}) {
    showModalBottomSheet(
      backgroundColor: backgroundColor ?? AppColors.light,
      isScrollControlled: isScrollControlled,
      isDismissible: dismissable,
      context: Get.context!,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: widget,
        );
      },
    ).whenComplete(() => onCloseSheet());
  }
}
