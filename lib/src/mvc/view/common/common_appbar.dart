import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:sreeselvavinayagartemple/src/core/constants/app_config.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppbar(
      {super.key,
      this.onPressLead,
      this.title,
      this.actions,
      this.iconLead,
      this.onPressHome});
  final List<Widget>? actions;
  final Icon? iconLead;
  final VoidCallback? onPressLead;
  final VoidCallback? onPressHome;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            if (onPressLead != null) {
              onPressLead!();
            } else {
              Navigator.pop(context);
            }
          },
          icon: iconLead ??
              Icon(Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back)),
      actions: actions,
      title: Text(
        title ?? AppConfig.appName.tr,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
