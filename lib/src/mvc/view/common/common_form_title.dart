import 'package:flutter/material.dart';
import 'package:sreeselvavinayagartemple/src/mvc/view/common/common_text_widget.dart';
import 'package:sreeselvavinayagartemple/src/mvc/view/common/mandatory_widget.dart';

class CommonFormTitle extends StatelessWidget {
  const CommonFormTitle(
      {super.key, required this.title, this.isMandatory = false, this.style});
  final String title;
  final bool isMandatory;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextView(
            text: title,
            textStyle: style ?? Theme.of(context).textTheme.titleLarge),
        if (isMandatory)  MandatoryWidget(style: style ?? Theme.of(context).textTheme.titleLarge,)
      ],
    );
  }
}
