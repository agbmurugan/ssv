// ignore_for_file: empty_catches

import 'package:flutter/material.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_sizes.dart';
import 'package:sreeselvavinayagartemple/src/mvc/view/common/common_text_widget.dart';

class CommonErrorWidget extends StatelessWidget {
  const CommonErrorWidget({
    super.key,
    required this.error,
    this.onPressCancel,
  });
  final String error;
  final VoidCallback? onPressCancel;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(AppSizes.size_12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (onPressCancel != null)
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () => onPressCancel!(),
                icon: const Icon(Icons.close),
              ),
            ),
          const Icon(
            Icons.error,
            size: AppSizes.size_48,
          ),
          const SizedBox(
            height: AppSizes.height_12,
          ),
          TextView(text: error),
          const SizedBox(
            height: AppSizes.height_12,
          )
        ],
      ),
    );
  }

  // getErrorMessage() {
  //   try {
  //     var message =
  //         ErrorConfig.errorMessageMap[error] ?? ErrorConfig.unknownError;
  //     return message;
  //   } catch (e) {
  //     return ErrorConfig.unknownError;
  //   }
  // }
}
