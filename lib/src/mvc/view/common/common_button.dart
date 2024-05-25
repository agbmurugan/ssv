import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sreeselvavinayagartemple/src/mvc/view/common/common_text_widget.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key, this.style, required this.onPressed, this.child, this.text});
  final ButtonStyle? style;
  final Function() onPressed;
  final Widget? child;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: style,
        onPressed: () => onPressed(),
        child: child ?? TextView(text: text??"Save".tr),);
  }
}
