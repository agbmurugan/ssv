import 'package:flutter/material.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_colors.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_sizes.dart';
import 'package:sreeselvavinayagartemple/src/mvc/view/common/common_button.dart';
import 'package:sreeselvavinayagartemple/src/mvc/view/common/common_text_widget.dart';

class CommonDropdownButton extends StatelessWidget {
  const CommonDropdownButton(
      {super.key, required this.value, this.title, required this.onPressed});
  final String? title;
  final String value;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CommonButton(
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            backgroundColor: const MaterialStatePropertyAll(
              AppColors.light,
            ),
            side: const MaterialStatePropertyAll(
                BorderSide(color: AppColors.darkerGrey)),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.size_06),
              ),
            ),
            padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(
                  vertical: AppSizes.size_08, horizontal: AppSizes.size_08),
            ),
          ),
      onPressed: () => onPressed(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextView(
            text: value,
            textStyle: Theme.of(context).textTheme.bodyLarge,
            maxLine: 1,
          ),
          const Icon(
            Icons.arrow_drop_down,
            color: AppColors.primary,
          )
        ],
      ),
    );
  }
}
